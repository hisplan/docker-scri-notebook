FROM jupyter/datascience-notebook:notebook-6.4.0

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

USER root

RUN apt-get update && apt-get install -y tree

COPY scripts/install-dependency.R /opt/
COPY scripts/requirements.txt /opt/

RUN pip3 install -r /opt/requirements.txt
RUN Rscript /opt/install-dependency.R

WORKDIR /home/jovyan/work
