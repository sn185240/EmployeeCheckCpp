#!/bin/bash
mkdir -p com/example/swig
mkdir -p com/employee/swig
# Commands for CPP
swig -c++ -java -package com.example.swig -outdir com/example/swig example.i
swig -c++ -java -package com.employee.swig -outdir com/employee/swig employee.i

g++ -fpic -c example.cxx employee.cxx

# g++ -fpic -c example_wrap.cxx -I/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home/include -I/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home/include/darwin
g++ -fpic -c example_wrap.cxx employee_wrap.cxx -I/opt/homebrew/Cellar/openjdk/21.0.2/libexec/openjdk.jdk/Contents/Home/include -I/opt/homebrew/Cellar/openjdk/21.0.2/libexec/openjdk.jdk/Contents/Home/include/darwin


g++ -dynamiclib example_wrap.o example.o -o libexample.dylib
g++ -dynamiclib employee_wrap.o employee.o -o libemployee.dylib

# for .so:
# g++ -shared example.o example_wrap.o -o libexample.so
# g++ -shared employee_wrap.o employee.o -o libemployee.so

# Define a new class called runme

# Compile Java files
javac com/example/swig/*.java
javac com/employee/swig/*.java

javac *.java

# Run Java program
java -Djava.library.path=/Users/sn185240/Documents/GitHub/EmployeeCheckCpp runme

jar cvf swig.jar com/example/swig/*.class com/employee/swig/*.class
# jar cvf swig.jar com/employee/swig/*.class



