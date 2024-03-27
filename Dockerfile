# Use a Debian-based image with Java and necessary build tools
# FROM amazoncorretto:17
FROM ubuntu:22.04 

# Install necessary tools
RUN apt-get update && apt-get install -y swig g++ sudo
# RUN yum install -y swig gcc-c++ java-11-amazon-corretto-devel
# RUN yum install -y swig gcc-c++
# RUN yum update -y && yum install -y gcc-c++ && yum install -y swig

RUN sudo apt install -y curl

# RUN sudo apt install default-jre -y
RUN sudo apt install -y openjdk-21-jdk openjdk-21-jre

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the script into the container
COPY . .

# Make the script executable
RUN chmod +x commands_docker.sh

# Run the script when the container starts
CMD ["./commands_docker.sh"]