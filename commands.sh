#!/bin/bash

# Commands for CPP
swig -c++ -java EmployeeCheck.i
g++ -fpic -c EmployeeCheck.cxx
g++ -fpic -c EmployeeCheck_wrap.cxx -I/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home/include -I/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home/include/darwin
g++ -dynamiclib EmployeeCheck_wrap.o EmployeeCheck.o -o libemployeecheck.dylib

# Define a new class called runme

# Compile Java files
javac *.java

# Run Java program
java -Djava.library.path=/Users/sn185240/Documents/GitHub/EmployeeCheckCpp runme