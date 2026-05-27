FROM quay.io/fenicsproject/dev:latest

RUN pip3 install matplotlib jupyter

WORKDIR /home/fenics/shared


