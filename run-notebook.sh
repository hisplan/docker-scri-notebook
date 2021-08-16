#!/bin/bash

source config.sh

docker run -it --rm \
    -p 8888:8888 \
    -v $(pwd)/notebooks:/home/jovyan/work \
    -v $(pwd)/data:/data \
    ${image_name}:${version}
