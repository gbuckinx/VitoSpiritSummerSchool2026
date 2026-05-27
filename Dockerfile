FROM quay.io/fenicsproject/dev:latest

RUN pip3 install matplotlib jupyter

WORKDIR /home/fenics/shared

CMD ["jupyter", "notebook", \
     "--ip=0.0.0.0", \
     "--port=8888", \
     "--no-browser", \
     "--allow-root"]
