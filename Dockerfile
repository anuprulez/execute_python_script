FROM jupyter/tensorflow-notebook:latest

MAINTAINER Anup Kumar, anup.rulez@gmail.com

USER root

ENV DEBIAN_FRONTEND noninteractive

#RUN apt-get -qq update && apt-get install --no-install-recommends -y libcurl4-openssl-dev libxml2-dev \ 
#    apt-transport-https python3-dev python3-pip libc-dev pandoc pkg-config liblzma-dev libbz2-dev libpcre3-dev \
#    build-essential libblas-dev liblapack-dev libzmq3-dev libyaml-dev libxrender1 fonts-dejavu \
#    libfreetype6-dev libpng-dev net-tools procps libreadline-dev wget software-properties-common gnupg2 curl ca-certificates && \
#    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Python packages
RUN pip install --no-cache-dir \
    tensorflow-gpu==2.5.0 \
    scikit-learn \
    pyyaml \
    h5py \
    pandas \
    datasette-pytables \
    onnx onnx-tf \
    tf2onnx \
    skl2onnx \
    onnxruntime \
    bioblend \
    galaxy-ie-helpers

