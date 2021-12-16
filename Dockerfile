ARG FROM_IMAGE_NAME=nvcr.io/nvidia/cuda:11.4.2-cudnn8-devel-ubuntu20.04
FROM ${FROM_IMAGE_NAME}

COPY ./requirements.txt /tmp/requirements.txt
#WORKDIR /workspace/LDL



RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev 
#RUN apt-get install -y neofetch  
RUN pip -q install pip --upgrade

RUN pip install git+https://github.com/NVIDIA/dllogger
RUN pip install --disable-pip-version-check -r /tmp/requirements.txt

RUN pip install jupyter

#RUN /opt/tensorrt/python/python_setup.sh


