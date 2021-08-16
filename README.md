# docker-scri-notebook

## Base Image

[jupyter/datascience-notebook:notebook-6.4.0](https://hub.docker.com/layers/jupyter/datascience-notebook/notebook-6.4.0/images/sha256-4a017d04db921fb44d87c14e4c588b9db40652dac861aa06a6fbd7fb36f33641?context=explore)

Selecting an image: https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html

## Installed Packages

### Python v3.9.6

```
scanpy==1.8.1
anndata==0.7.6
umap==0.5.1
numpy==1.21.1
scipy==1.7.1
pandas==1.3.1
scikit-learn==0.24.2
statsmodels==0.12.2
python-igraph==0.9.6
pynndescent==0.5.4
papermill==2.3.3
rpy2
```

### R v4.1.0

```
Bioconductor=3.13
BiocManager=1.30.16
SingleCellExperiment=1.14.1
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
