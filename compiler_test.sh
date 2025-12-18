#!/bin/bash
# set the working directory to the directory containing this script
cd "$(dirname "$0")"

java -cp StalaJava/bin/ main/Main stala compiler.stala -out outputs/compiler

./outputs/compiler