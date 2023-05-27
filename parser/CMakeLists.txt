cmake_minimum_required(VERSION 3.0)
project(NavSParser)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

set(THIRD_PARTY_PATH "${CMAKE_BINARY_DIR}/third_party" CACHE STRING
        "A path setting third party libraries download & build directories")

set(THIRD_PARTY_BUILD_TYPE Release)

include_directories(
        ${PROJECT_SOURCE_DIR}/grammar
        ${PROJECT_SOURCE_DIR}
        ${PROJECT_SOURCE_DIR}/NavSTrans
        /usr/local/include/antlr4-runtime
)
link_directories(/opt/homebrew/lib)

find_package(Boost REQUIRED)

INCLUDE_DIRECTORIES( ${Boost_INCLUDE_DIR} )


find_package(Clang REQUIRED PATHS ${CLANG_DIR} NO_DEFAULT_PATH)
message(STATUS "Found CLANG ${Clang_PACKAGE_VERSION}")
message(STATUS "Using CLANGConfig.cmake in: ${CLANG_DIR}")

list(APPEND CLANG_LIBS
        clang
        clangAST
        clangAnalysis
        clangBasic
        clangDriver
        clangEdit
        clangIndex
        clangFrontend
        clangFrontendTool
        clangLex
        clangParse
        clangSema
        clangEdit
        clangASTMatchers
        clangRewrite
        clangRewriteFrontend
        clangStaticAnalyzerFrontend
        clangStaticAnalyzerCheckers
        clangStaticAnalyzerCore
        clangSerialization
        clangToolingCore
        clangTooling)

find_package(LLVM REQUIRED PATHS ${LLVM_DIR})
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

message("${CLANG_INCLUDE_DIRS}")

include_directories(${LLVM_INCLUDE_DIRS} ${CLANG_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})
add_definitions(${CLANG_DEFINITIONS})
list(APPEND LLVM_LIBS
        LLVMFrontendOpenMP
        LLVMCore
        LLVMAnalysis
        LLVMOption
        LLVMMCParser
        LLVMMC
        LLVMBinaryFormat
        LLVMRemarks
        LLVMBitReader
        LLVMBitstreamReader
        LLVMProfileData
        LLVMSupport
        LLVMDemangle
        )

link_directories(/usr/local/lib)
add_library(parser global.h grammar/NavSParser.cpp grammar/NavSLexer.cpp grammar/NavSLexer.h grammar/NavSLexer.cpp)

IF(APPLE)
    LIST(APPEND SYS_LIBS pthread z3 stdc++ dl z curses m xml2 boost_system boost_filesystem)
ELSEIF(UNIX)
    LIST(APPEND SYS_LIBS pthread dl tinfo z stdc++ z3 stdc++ boost_system boost_filesystem)
ENDIF()

add_executable(NavSParser main.cpp trans.h)
add_dependencies(NavSParser parser)
add_compile_options(-g)
add_definitions(-w)
add_compile_definitions(ROOT_DIR="${ROOT_DIR}")
target_link_libraries(NavSParser antlr4-runtime parser ${CLANG_LIBS} ${LLVM_LIBS} ${SYS_LIBS} ${Boost_LIBRARIES})
