#!/bin/bash 

echo "Instrumenting..."
./build/NavSParser ./$RULE ./$RULE.ll ./$RULE.c &&

echo "Compiling..." &&
$CUR_PWD/wasi-sdk/build/llvm/bin/llc -march=wasm32 -filetype=obj ./$RULE.ll &&

echo "Linking..." &&
$CUR_PWD/wasi-sdk/build/llvm/bin/wasm-ld --allow-undefined -m wasm32 -L$CUR_PWD/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/lib/wasm32-wasi $CUR_PWD/wasi-sdk/build/wasi-sdk-14.0/share/wasi-sysroot/lib/wasm32-wasi/crt1-command.o ./$RULE.o -lc $CUR_PWD/wasi-sdk/build/wasi-sdk-14.0/lib/clang/13.0.0/lib/wasi/libclang_rt.builtins-wasm32.a -o ./$RULE.wasm &&

echo "Translating into wat format..." &&
wasm2wat ./$RULE.wasm -o ./$RULE.wat &&

# rm -rf ./$RULE.ll ./$RULE.o &&

echo "Done!"
