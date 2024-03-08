# Use a Debian-based image with Java and necessary build tools
FROM amazoncorretto:21

# Install necessary tools
# RUN apt-get update && apt-get install -y swig g++
# RUN yum install -y swig gcc-c++ java-11-amazon-corretto-devel
RUN yum install -y swig gcc-c++

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the script into the container
COPY . .

# Make the script executable
RUN chmod +x commands_docker.sh

# Run the script when the container starts
CMD ["./commands_docker.sh"]