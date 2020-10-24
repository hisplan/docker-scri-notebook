# docker-scri-notebook

## Base Image

Based on https://hub.docker.com/layers/jupyter/scipy-notebook/45bfe5a474fa/images/sha256-2a4c0fe03442561b0d59298e2188dfac1abbbbb00dab96a1f6e4e56c41c13444?context=explore

```
jupyter/scipy-notebook:45bfe5a474fa
DIGEST:sha256:2a4c0fe03442561b0d59298e2188dfac1abbbbb00dab96a1f6e4e56c41c13444
```

- Selecting images: https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html


## Build & Push

```bash
$ ./build.sh
$ ./push.sh
```

## Running Notebook

```bash
./run-notebook.sh
```
