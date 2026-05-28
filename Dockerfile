FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    software-properties-common \
    python3-pip \
    python3-notebook \
    python3-ipykernel \
    git

RUN add-apt-repository -y ppa:fenics-packages/fenics

RUN apt-get update && apt-get install -y \
    fenics \
    python3-mshr \
    gmsh

RUN pip3 install \
    matplotlib \
    meshio \
    jupyterlab

RUN useradd -ms /bin/bash jovyan

USER jovyan

WORKDIR /home/jovyan
