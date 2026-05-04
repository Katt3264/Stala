#!/bin/bash

cd "$(dirname "$0")"
source build.conf
cd ..

set -e # stop on error


self_compile_using_compiler_compile_to() {
	using_compiler_compile_to "$TEMP_DIR"/"$1" compiler/"$2" "$TEMP_DIR"/"$3"
}


# create the bootstrap compiler from .asm
nasm -f macho64 "$TEMP_DIR"/bootstrap.asm -o "$TEMP_DIR"/bootstrap.o
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o "$TEMP_DIR"/bootstrap "$TEMP_DIR"/bootstrap.o
chmod +x "$TEMP_DIR"/bootstrap


# compile compiler.stala using bootstrap
echo "compiling compiler with bootstrap"
self_compile_using_compiler_compile_to "bootstrap" "compiler_x86_64" "stala_from_bootstrap"


# compile compiler.stala using compiler.stala
echo "compiling compiler with itself"
self_compile_using_compiler_compile_to "stala_from_bootstrap" "compiler_x86_64" "stala_from_stala"


# compile compiler.stala using compiler.stala
echo "verifying it compiles itself to itself"
self_compile_using_compiler_compile_to "stala_from_stala" "compiler_x86_64" "stala"


# verify that stala_from_stala compiled itself to itself
diff "$TEMP_DIR"/stala_from_stala.asm "$TEMP_DIR"/stala.asm -q -s



