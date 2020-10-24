#!/bin/bash

docker login
docker tag scri-notebook:0.0.1 hisplan/scri-notebook:0.0.1
docker push hisplan/scri-notebook:0.0.1
