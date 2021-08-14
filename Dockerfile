FROM jupyter/scipy-notebook:notebook-6.4.0

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

USER root

RUN apt-get update && apt-get install -y tree
RUN pip3 install scanpy[leiden]==1.7.2
RUN pip3 install papermill==2.3.3

WORKDIR /home/jovyan/work
