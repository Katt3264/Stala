#!/bin/bash

cd "$(dirname "$0")"
source build.conf
cd ..

set -e # stop on error


self_compile_using_compiler_compile_to() {
	using_compiler_compile_to "$TEMP_DIR"/"$1" compiler/"$2" "$TEMP_DIR"/"$3"
}



# compile compiler.stala using compiler.stala
echo "compiling 32 bit compiler"
self_compile_using_compiler_compile_to "stala" "compiler_64_to_32" "stala_x86_32"





