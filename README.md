# Jupyter Data Science Docker Boilerplate

## Status

**Proof of concept 🚧**: There are many things need to be added, improved, and fixed. 

## Why we need this?
When doing machine learning project, one of the problems data science practioners face is depedencies and environment mismatched problem. For example, installing tensorflow GPU support on NVIDIA GPU required correct version of CUDA and CUDNN. With container boilerplace, we can predefined environment and depedencies to make our model **easier to be trained on cloud instances** and **controllable environment for deployment**.

I planned to made this Notebook has **Google Colab parity**, so that the users can train model on their private Cloud, Google Colab, Computer without dependeicies problem. 

## Getting start:



### Standard notebook:
    
Fast and easy notebook equipped with out of the box data science tools

- Jupyter notebook:   
`docker-compose -f docker-compose.dev.yml up jupyter --build`  
    - Tested with `src/03.1-Classification-SVMs.ipynb`
    - Colab parity: [link](https://colab.research.google.com/github/new5558/Jutyper-Data-Science-Docker-Boilerplate/blob/master/src/03.1-Classification-SVMs.ipynb)

### GPU supported notebook:

GPU supported notebook with NVIDIA NGC Docker template for Deep Learning projects   

**Prerequisite**: NVIDIA driver installed on your device.   
**Additional information for Windows users**: Docker with GPU is only supported on Windows 11 or Insider preview of Windows 10. For more information please follow this [tutorial](https://docs.nvidia.com/cuda/wsl-user-guide/index.html)     

**For first time installation**:   
    `docker pull nvcr.io/nvidia/pytorch:20.01-py3`
   

    - Jupyter notebook with Pytorch (Take longer to load):   
     `docker-compose -f docker-compose.dev.yml up jupyter-pytorch --build`
        - Test with `src/pytorch_hello_world.ipynb`
    - Jupyter notebook Pytorch and WangchanBERTa:    
    `docker-compose -f docker-compose.dev.yml up jupyter-pytorch-bert --build`
        - Test with `src/wangchanberta_getting_started_aireseach.ipynb`
