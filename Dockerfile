FROM quay.io/fenicsproject/dev:latest

USER root

# Install extra Python tools
RUN pip3 install --no-cache-dir \
    jupyterlab \
    notebook \
    matplotlib \
    meshio \
    ipykernel

# Enable JupyterLab
ENV JUPYTER_ENABLE_LAB=yes

WORKDIR /home/fenics

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
