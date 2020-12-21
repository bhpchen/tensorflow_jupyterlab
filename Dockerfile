FROM tensorflow/tensorflow:latest-gpu-py3

WORKDIR /workspace/src/

RUN pip install --upgrade pip

RUN pip install jupyterlab

EXPOSE 8888

ENTRYPOINT ["/usr/local/bin/jupyter","lab","--ip=0.0.0.0","--allow-root"]