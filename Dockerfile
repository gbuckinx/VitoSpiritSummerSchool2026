FROM quay.io/fenicsproject/dev:latest

USER root

# Jupyter + plotting tools
RUN pip3 install --no-cache-dir \
    jupyterlab \
    notebook \
    matplotlib \
    meshio \
    ipykernel

# Make sure notebooks are visible in Jupyter
ENV JUPYTER_ENABLE_LAB=yes

USER fenics

WORKDIR /home/fenics

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
