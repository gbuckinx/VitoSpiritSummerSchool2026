FROM quay.io/fenicsproject/stable:2019.1.0

RUN pip3 install matplotlib jupyter

WORKDIR /home/fenics/shared
