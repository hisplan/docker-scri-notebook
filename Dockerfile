FROM jupyter/scipy-notebook:45bfe5a474fa

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

USER root

RUN apt-get update && apt-get install -y tree
RUN pip3 install scanpy[leiden]==1.6.0
RUN pip3 install papermill==2.1.3

COPY ./notebooks/preprocess.ipynb /opt/

WORKDIR /home/jovyan/work
