#!/usr/bin/env bash
set -x

# Vagrant provising script for installing a SciPy stack
sudo apt-get update -qq
sudo apt-get install -qq python-pip python-dev
sudo apt-get install -qq python-numpy python-scipy python-matplotlib cython
sudo apt-get install -qq python-zmq python-jinja2

#upgrade pip
sudo -H pip install --upgrade pip

sudo -H pip install --upgrade zmq
sudo -H pip install ipython
sudo -H pip install jupyter
sudo apt-get install -qq libhdf5-dev netcdf-bin libnetcdf-dev 
sudo -H pip install netcdf4
