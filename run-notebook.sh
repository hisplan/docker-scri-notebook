#!/bin/bash

docker run -it --rm \
    -p 8888:8888 \
    -v $(pwd)/notebooks:/home/jovyan/work \
    -v $(pwd)/data:/data \
    scri-notebook:0.0.1
