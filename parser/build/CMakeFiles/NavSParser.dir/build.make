# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zzhzz/ISSTA23-Artifacts/parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zzhzz/ISSTA23-Artifacts/parser/build

# Include any dependencies generated for this target.
include CMakeFiles/NavSParser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/NavSParser.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NavSParser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NavSParser.dir/flags.make

CMakeFiles/NavSParser.dir/main.cpp.o: CMakeFiles/NavSParser.dir/flags.make
CMakeFiles/NavSParser.dir/main.cpp.o: /home/zzhzz/ISSTA23-Artifacts/parser/main.cpp
CMakeFiles/NavSParser.dir/main.cpp.o: CMakeFiles/NavSParser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zzhzz/ISSTA23-Artifacts/parser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NavSParser.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NavSParser.dir/main.cpp.o -MF CMakeFiles/NavSParser.dir/main.cpp.o.d -o CMakeFiles/NavSParser.dir/main.cpp.o -c /home/zzhzz/ISSTA23-Artifacts/parser/main.cpp

CMakeFiles/NavSParser.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NavSParser.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zzhzz/ISSTA23-Artifacts/parser/main.cpp > CMakeFiles/NavSParser.dir/main.cpp.i

CMakeFiles/NavSParser.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NavSParser.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zzhzz/ISSTA23-Artifacts/parser/main.cpp -o CMakeFiles/NavSParser.dir/main.cpp.s

# Object files for target NavSParser
NavSParser_OBJECTS = \
"CMakeFiles/NavSParser.dir/main.cpp.o"

# External object files for target NavSParser
NavSParser_EXTERNAL_OBJECTS =

NavSParser: CMakeFiles/NavSParser.dir/main.cpp.o
NavSParser: CMakeFiles/NavSParser.dir/build.make
NavSParser: libparser.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangAST.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangAnalysis.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangBasic.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangDriver.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangEdit.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangIndex.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangFrontend.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangFrontendTool.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangLex.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangParse.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangSema.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangEdit.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangASTMatchers.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangRewrite.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangRewriteFrontend.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangStaticAnalyzerFrontend.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangStaticAnalyzerCheckers.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangStaticAnalyzerCore.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangSerialization.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangToolingCore.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangTooling.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMFrontendOpenMP.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMCore.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMAnalysis.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMOption.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMMCParser.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMMC.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBinaryFormat.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMRemarks.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBitReader.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBitstreamReader.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMProfileData.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMSupport.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMDemangle.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangCrossTU.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangIndex.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangCodeGen.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMCoverage.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMLTO.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMExtensions.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMCodeGen.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMPasses.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMCoroutines.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMipo.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBitWriter.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMIRReader.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMAsmParser.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMLinker.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMInstrumentation.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMObjCARCOpts.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMVectorize.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMScalarOpts.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMAggressiveInstCombine.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMInstCombine.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMTarget.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangARCMigrate.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangFrontend.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangDriver.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangParse.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangSerialization.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangSema.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangAnalysis.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangASTMatchers.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangEdit.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangAST.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMFrontendOpenMP.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMTransformUtils.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMAnalysis.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMProfileData.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMObject.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMMCParser.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMMC.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMDebugInfoCodeView.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBitReader.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMCore.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMRemarks.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBitstreamReader.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMTextAPI.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMBinaryFormat.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMOption.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangFormat.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangToolingInclusions.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangToolingCore.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangRewrite.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangLex.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libclangBasic.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMSupport.a
NavSParser: /data/wasi-sdk/build/llvm/lib/libLLVMDemangle.a
NavSParser: /usr/lib/x86_64-linux-gnu/libz.so
NavSParser: /usr/lib/x86_64-linux-gnu/libtinfo.so
NavSParser: CMakeFiles/NavSParser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zzhzz/ISSTA23-Artifacts/parser/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NavSParser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NavSParser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NavSParser.dir/build: NavSParser
.PHONY : CMakeFiles/NavSParser.dir/build

CMakeFiles/NavSParser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NavSParser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NavSParser.dir/clean

CMakeFiles/NavSParser.dir/depend:
	cd /home/zzhzz/ISSTA23-Artifacts/parser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zzhzz/ISSTA23-Artifacts/parser /home/zzhzz/ISSTA23-Artifacts/parser /home/zzhzz/ISSTA23-Artifacts/parser/build /home/zzhzz/ISSTA23-Artifacts/parser/build /home/zzhzz/ISSTA23-Artifacts/parser/build/CMakeFiles/NavSParser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NavSParser.dir/depend
