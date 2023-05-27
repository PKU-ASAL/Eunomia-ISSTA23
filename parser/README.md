# AES Parser for Eunomia

This repo is the AES parser for Eunomia. After parsing the source code and its corresponding AES script, the instrumented Wasm binary will be generated, and it can be analyzed by the engine in Eunomia.

We will show you how to compile the parser from scratch and how to use it.

## Prerequisites
Please make sure all necessary prerequisties tools mentioned in [this page](https://github.com/EunomiaISSTA/ISSTA23-Artifacts) are installed correctly.

To compile the parser, we have to install the llvm and its clang from the source code of [wasi-sdk](https://github.com/WebAssembly/wasi-sdk).
Therefore, you should follw the following steps:

```shell
# make sure you are under the `parser` folder
git clone --recursive --branch wasi-sdk-14 https://github.com/WebAssembly/wasi-sdk.git
cd wasi-sdk

# update Makefile to install some necessary tools
sed -i 's/-DLLVM_DEFAULT_TARGET_TRIPLE=wasm32-wasi/-DLLVM_DEFAULT_TARGET_TRIPLE=wasm32-wasi -DLLVM_ENABLE_RTTI=ON/g' Makefile
sed -i 's/-DLLVM_ENABLE_PROJECTS="/-DLLVM_ENABLE_PROJECTS="llc;/g' Makefile
sed -i 's/install-lld/install-llc install-lld/g' Makefile

# compile
NINJA_FLAGS=-v make package
```

After several minutes (depending on your network and device), you have successfully compiled wasi-sdk (ver. 14). You can check if the folder `wasi-sdk-14.0` exists in `./wasi-sdk/build`.

## Compile the Parser
Once you have compiled the llvm and clang, you can compile the parser.
First, make sure you are under `SOME_DIR/parser`.
Then, you can run the following commands:

```shell
# declare a temporary variable which will be used soon
CUR_PWD=$(pwd)
mkdir build && cd build
cmake -DLLVM_DIR=$CUR_PWD/wasi-sdk/build/llvm/lib/cmake/llvm -DCLANG_DIR=$CUR_PWD/wasi-sdk/build/llvm/lib/cmake/clang -DROOT_DIR=$CUR_PWD ..
make
```

After the above compilation, you will notice that an executable file, `NavSParser`, is generated under the `./build` folder.

Congratulations! You have successfully compiled the parser!

## Usage
Of course, we provide a one-shot script to relieve your anxiety on running such an unmature tool.
Again, first, make sure you are under `SOME_DIR/parser`.
You will see a `build` folder that includes the freshly compiled parser, a `testcases` folder that includes a sample source code and its corresponding AES script, and a `parse.sh`, which is the silver bullet we provide for you.

Specifically, the `collatz.c` in the `testcases` implements a logic bomb based on the Collatz conjecture.
Here is its simplified version:

```c
int collatz(int x) {
    if (x % 2 == 0) return x / 2;
    return 3 * x + 1;
}

int logic_bomb(char *s) {
    int j = collatz(s[0]);
    int loopcount = 1;
    while (j != 1)
    {
        j = collatz(j);
        loopcount++;
    }
    if (loopcount == 25)
        return BOMB_ENDING;
    else
        return NORMAL_ENDING;
}
```

The `logic_bomb` will take a symbolic number, and calls `collatz` till the number is converged into 1.
Only the loop is iterated exactily 25 times, the bomb will be triggered.
Note that there is no solution for the Collatz conjecture, thus the engine has to brute-forcely try each possible value of the symbol.
However, we can give an AES script to accelerate the symbolic execution process.
The AES script is like:

```
cnt_loop_onj : func(logic_bomb) {
    cnt_loop_onj = 0;
    cuse(loopcount) {cnt_loop_onj += 1;}
    puse(j) {prior = abs(25 - cnt_loop_onj);}
    ouse(3) {halt = True;}
}
```

As we can see, L1 indicates that such an AES script is limited in the scope of `logic_bomb`.
At L2, it declares a variable, which will be incremented by 1 once the `loopcount` is used in an arithmetic statement (**cuse**). In other words, the `cnt_loop_onj` can track the value of `loopcount` in source code.
At L4, we give a heuristic: the state whose value of `loopcount`, i.e., `cnt_loop_onj`, is more closer to 25 has more chance to trigger the bomb. To this end, we customize a fitness function: `abs(25 - cnt_loop_onj)`.
At L5, we tell the engine that once the 3 is used as output (the return statement), the analysis can be terminated as the bomb is triggered already.

We can instrument the above AES script into the source code in one line:
```shell
CUR_PWD=$(pwd) RULE=./testcases/collatz ./parse.sh
```
The `CUR_PWD` tells the root directory of `wasi-sdk`, and the `RULE` refers to the path of the source code as well as its AES script.
Note that please make sure the source code and its AES script have the same name.

Concequently, the `parse.sh` will invoke necessary tools compiled previously and generate a `.wasm` and a `.wat` files under the `testcase` folder.
The `.wasm` can be directly sent to the engine to conduct the following symbolic execution.
