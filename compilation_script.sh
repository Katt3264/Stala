#!/bin/bash
# set the working directory to the directory containing this script
cd "$(dirname "$0")"


if [ -d "StalaJava/bin" ]; then
    echo "directory: bin exists, skipping compilation"
else
    echo "directory: bin missing, compiling"
    javac StalaJava/src/main/Main.java -cp StalaJava/src/ -d StalaJava/bin
fi


java -cp StalaJava/bin/ main/Main stala examples/helloworld.stala -out outputs/output

./outputs/output