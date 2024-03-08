#!/bin/bash

# Commands for CPP
swig -c++ -java example.i
g++ -fpic -c example.cxx
# g++ -fpic -c example_wrap.cxx -I/usr/java/include -I/usr/java/include/debian
# g++ -fpic -c example_wrap.cxx -I/lib/jvm/java-1.8.0-amazon-corretto/include -I/lib/jvm/java-1.8.0-amazon-corretto/include/linux
g++ -fpic -c example_wrap.cxx -I/lib/jvm/java/include -I/lib/jvm/java/include/linux
# g++ -dynamiclib example_wrap.o example.o -o libexample.dylib
# for .so:
g++ -shared example.o example_wrap.o -o libexample.so

# Define a new class called runme

# Compile Java files
javac *.java

# Run Java program
java -Djava.library.path=/usr/src/app runme