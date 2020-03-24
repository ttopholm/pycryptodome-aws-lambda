FROM amazonlinux:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN yum -y install gcc gmp python3-devel
RUN yum -y install python3-pip

# Run pip install when the container launches
CMD ["pip3", "install", "--target", "/out", "pycryptodome"]
