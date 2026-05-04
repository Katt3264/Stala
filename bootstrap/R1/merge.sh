#!/bin/bash
# set the working directory to the directory containing this script
cd "$(dirname "$0")"

cat compiler_input.stala stdlib/x86_64_asm.stala stdlib/system.stala stdlib/string.stala stdlib/stdio.stala stdlib/memory.stala stdlib/file.stala stdlib/collections.stala > compiler.stala