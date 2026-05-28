FROM quay.io/fenicsproject/dev:latest

RUN pip3 install --no-cache-dir \
    notebook==6.0.3 \
    jupyterlab==1.2.4 \
    matplotlib \
    meshio \
    ipykernel

WORKDIR /home/fenics

