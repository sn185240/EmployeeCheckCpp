#!/bin/bash

# Commands for CPP
swig -c++ -java example.i
g++ -fpic -c example.cxx
# g++ -fpic -c example_wrap.cxx -I/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home/include -I/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home/include/darwin
g++ -fpic -c example_wrap.cxx -I/opt/homebrew/Cellar/openjdk/21.0.2/include -I/opt/homebrew/Cellar/openjdk/21.0.2/include/darwin
g++ -dynamiclib example_wrap.o example.o -o libexample.dylib
# for .so:
g++ -shared example.o example_wrap.o -o libexample.so

# Define a new class called runme

# Compile Java files
javac *.java

# Run Java program
java -Djava.library.path=/Users/sn185240/Documents/GitHub/EmployeeCheckCpp runme