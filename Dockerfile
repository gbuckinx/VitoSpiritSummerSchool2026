FROM quay.io/fenicsproject/dev:latest

RUN pip3 install --no-cache-dir \
    notebook==6.0.3 \
    jupyterlab==1.2.4 \
    matplotlib \
    meshio \
    ipykernel

WORKDIR /home/fenics

EXPOSE 8888

CMD ["jupyter-notebook", \
     "--NotebookApp.token=''", \
     "--NotebookApp.password=''", \
     "--ip=0.0.0.0", \
     "--port=8888", \
     "--no-browser", \
     "--allow-root"]
