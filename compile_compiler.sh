#!/bin/bash
# set the working directory to the directory containing this script
cd "$(dirname "$0")"

rm -rf outputs
mkdir outputs

# ---COMPILATION STEPS---
#
# use StalaJava       to compile compiler.stala to compiler.asm		
# use compiler.asm    to compile compiler.stala to compiler_V1.asm	
# use compiler_V1.asm to compile compiler.stala to compiler_V2.asm
#
# compiler.asm and compiler_V1.asm should output the exact same .asm output for a given input
# compiler_V1.asm and compiler_V2.asm should be the exact same because it is the output of compiler.stala compiled with compiler.stala
#
#


java -cp StalaJava/bin/ main/Main stala compiler_x86_64.stala -out outputs/compiler
nasm -f macho64 outputs/compiler.asm
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o outputs/compiler outputs/compiler.o
chmod +x outputs/compiler


./outputs/compiler compiler_x86_64.stala -out outputs/compiler_x86_64_V1.asm
nasm -f macho64 outputs/compiler_x86_64_V1.asm
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o outputs/compiler_x86_64_V1 outputs/compiler_x86_64_V1.o
chmod +x outputs/compiler_x86_64_V1


./outputs/compiler_x86_64_V1 compiler_x86_64.stala -out outputs/compiler_x86_64_V2.asm
nasm -f macho64 outputs/compiler_x86_64_V2.asm
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o outputs/compiler_x86_64_V2 outputs/compiler_x86_64_V2.o
chmod +x outputs/compiler_x86_64_V2


diff outputs/compiler_x86_64_V1.asm outputs/compiler_x86_64_V2.asm -s
diff outputs/compiler_x86_64_V1.o   outputs/compiler_x86_64_V2.o -s
diff outputs/compiler_x86_64_V1     outputs/compiler_x86_64_V2 -s