FROM ubuntu:16.04

ENV PYTHON_VERSION 3.5

# Install python3
RUN apt-get update && yes | apt-get -y upgrade && apt-get -y install python$PYTHON_VERSION-dev && ln -s /usr/bin/python3.5 /usr/bin/python3
RUN apt-get install -y git

# Install PIP3 
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip setuptools

# Install dependencies
RUN pip3 install tensorflow
RUN apt-get install -y protobuf-compiler python-pil python-lxml
RUN pip3 install jupyter
RUN pip3 install matplotlib

WORKDIR /usr/src/app


# Configure protobuff
RUN protoc object_detection/protos/*.proto --python_out=.
RUN export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
	
CMD ["python3"]

