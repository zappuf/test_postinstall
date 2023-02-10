#!/usr/bin/env bash
set -e

conda config --add channels defaults
conda config --add channels anaconda
conda config --add channels conda-forge
conda config --set channel_priority flexible

conda update -n base conda -y
conda update --all -y

# most of the tutorials are old and will need to explicitly install anndata <= 0.7.8
mamba install -y \
scanpy \
anndata==0.7.8 \
python-igraph \
leidenalg \
jupyterlab \
ipywidgets 

mamba clean -ya
