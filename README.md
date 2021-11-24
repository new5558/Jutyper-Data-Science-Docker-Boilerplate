# Jupyter Data Science Docker Boilerplate

## Status

**Proof of concept 🚧**: There are many things need to be added, improved, and fixed. 

## Why we need this?
When doing machine learning project, one of the problems data science practioners face is depedencies and environment mismatched problem. For example, installing tensorflow GPU support on NVIDIA GPU required correct version of CUDA and CUDNN. With container boilerplace, we can predefined environment and depedencies to make our model **easier to be trained on cloud instances** and **controllable environment for deployment**.

## Getting start:
Fast and easy notebook equipped with out of the box data science tools
Normal notebook:

- Jupyter notebook: `docker-compose -f docker-compose.dev.yml up jupyter --build`  
    - Tested with `src/03.1-Classification-SVMs.ipynb`

GPU supported notebook (Take significantly higher space and installation time):
GPU supported notebook with Tensorflow and Pytorch support   
**Prerequisite**: NVIDIA driver installed on device.

- Jupyter notebook with Pytorch (Take longer to load): `docker-compose -f docker-compose.dev.yml up jupyter-pytorch --build`
    - Test with `src/pytorch_hello_world.ipynb`
- Jupyter notebook Pytorch and WangchanBERTa: `docker-compose -f docker-compose.dev.yml up jupyter-pytorch-bert --build`
    - Test with `src/wangchanberta_getting_started_aireseach.ipynb`
