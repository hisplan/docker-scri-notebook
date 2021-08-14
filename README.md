# docker-scri-notebook

## Base Image

Based on https://hub.docker.com/layers/jupyter/scipy-notebook/notebook-6.4.0/images/sha256-39f1645f673000951b86ae4919a6314bb0be136d864d95b30766134d83a50e29?context=explore

```
jupyter/scipy-notebook:notebook-6.4.0
```

Selecting images: https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html

Installed packages:

```
scanpy==1.7.2
anndata==0.7.6
umap==0.5.1
numpy==1.20.3
scipy==1.6.3
pandas==1.2.4
scikit-learn==0.24.2
statsmodels==0.12.2
python-igraph==0.9.6
papermill==2.3.3
```

## Running Notebook

```bash
./run-notebook.sh
```

## Build Container Image

```bash
./build.sh
```

## Push to Docker Registry

Either you can use the `docker push` command or run `push.sh` (requires [SCING](https://github.com/hisplan/scing)):

```bash
./push.sh
```
