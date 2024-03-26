#!/bin/bash
mkdir -p com/example/swig

# Commands for CPP
swig -c++ -java -package com.example.swig -outdir com/example/swig example.i

g++ -fpic -c example.cxx

# g++ -fpic -c example_wrap.cxx -I/lib/jvm/java/include -I/lib/jvm/java/include/linux
g++ -fpic -c example_wrap.cxx -I/lib/jvm/java-21-openjdk-arm64/include -I/lib/jvm/java-21-openjdk-arm64/include/linux

# g++ -dynamiclib example_wrap.o example.o -o libexample.dylib
# for .so:
g++ -shared example.o example_wrap.o -o libexample.so

# Compile Java files
javac com/example/swig/*.java
javac *.java

# Run Java program
java -Djava.library.path=/usr/src/app runme

jar cvf swig.jar com/example/swig/*.class