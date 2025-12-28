#!/bin/bash
# set the working directory to the directory containing this script
cd "$(dirname "$0")"

rm -rf outputs
mkdir outputs

#
# create the bootstrap compiler from .asm
#
nasm -f macho64 bootstrap.asm -o outputs/bootstrap.o
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o outputs/bootstrap outputs/bootstrap.o
chmod +x outputs/bootstrap

#
# use the bootstrap compiler to compile compiler.stala
#
./outputs/bootstrap compiler.stala -out outputs/compiler.asm
nasm -f macho64 outputs/compiler.asm
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o outputs/compiler outputs/compiler.o
chmod +x outputs/compiler

#
# compile compiler.stala using compiler.stala
# 
./outputs/compiler compiler.stala -out outputs/compiler_final.asm
nasm -f macho64 outputs/compiler_final.asm
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o outputs/compiler_final outputs/compiler_final.o
chmod +x outputs/compiler_final

#
# compile compiler.stala using compiler.stala compiled with compiler.stala
# 
./outputs/compiler_final compiler.stala -out outputs/compiler_final2.asm


diff bootstrap.asm outputs/compiler.asm -q -s
diff outputs/compiler.asm outputs/compiler_final.asm -q -s
diff outputs/compiler_final.asm outputs/compiler_final2.asm -q -s