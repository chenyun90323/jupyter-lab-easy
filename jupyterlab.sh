#!/bin/sh
cd ~
jupyter-lab --config ~/.jupyter/jupyter_notebook_config.py >> ~/searchs/log/jupyterlab.log 2>&1
