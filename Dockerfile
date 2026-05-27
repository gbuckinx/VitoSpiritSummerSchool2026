FROM jupyter/base-notebook:python-3.10

USER root

RUN apt-get update && apt-get install -y \
    software-properties-common

RUN add-apt-repository -y ppa:fenics-packages/fenics

RUN apt-get update && apt-get install -y \
    fenics \
    python3-dolfin \
    python3-mshr \
    gmsh

RUN pip install matplotlib meshio

USER ${NB_UID}

WORKDIR /home/jovyan
