#!/bin/bash
# set the working directory to the directory containing this script
cd "$(dirname "$0")"

java -cp StalaJava/bin/ main/Main stala compiler_x86_64.stala -out outputs/compiler

./outputs/compiler



TARGET="outputs/tmpfile"
nasm -f macho64 "$TARGET.asm"
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o $TARGET "$TARGET.o"
chmod +x "$TARGET.asm"
./$TARGET