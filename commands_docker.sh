#!/bin/bash
mkdir -p com/example/swig
mkdir -p com/employee/swig

# Commands for CPP
swig -c++ -java -package com.example.swig -outdir com/example/swig example.i
swig -c++ -java -package com.employee.swig -outdir com/employee/swig employee.i

g++ -fpic -c example.cxx employee.cxx

# g++ -fpic -c example_wrap.cxx -I/lib/jvm/java/include -I/lib/jvm/java/include/linux
g++ -fpic -c example_wrap.cxx employee_wrap.cxx -I/lib/jvm/java-21-openjdk-arm64/include -I/lib/jvm/java-21-openjdk-arm64/include/linux

# g++ -dynamiclib example_wrap.o example.o -o libexample.dylib
# for .so:
g++ -shared example.o example_wrap.o -o libexample.so
g++ -shared employee_wrap.o employee.o -o libemployee.so

# Compile Java files
javac com/example/swig/*.java
javac com/employee/swig/*.java

javac *.java

# Run Java program
java -Djava.library.path=/usr/src/app runme

jar cvf swig.jar com/example/swig/*.class com/employee/swig/*.class

# Build commands:
# Build
# docker build -t my-java-app .
# Run
# docker run -it --rm my-java-app
# Interactive Run
# docker run -it --rm my-java-app /bin/bash

# Copy Output to Host
# docker cp 672a71ec64c546c9877a5fe5bbb2208ed15f59b4025a85ad4cf8ae91ae37bd70:/usr/src/app /Users/sn185240/Documents/GitHub/EmployeeCheckCpp

