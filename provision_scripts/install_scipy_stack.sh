#!/usr/bin/env bash
set -x

# Vagrant provising script for installing a SciPy stack
sudo apt-get update -qq
sudo apt-get install -qq python-pip python-dev
sudo apt-get install -qq python-numpy python-scipy python-matplotlib cython
sudo apt-get install -qq python-zmq python-jinja2

#upgrade pip
wget https://pypi.python.org/packages/e7/a8/7556133689add8d1a54c0b14aeff0acb03c64707ce100ecd53934da1aa13/pip-8.1.2.tar.gz
tar -xzvf pip-8.1.2.tar.gz
cd pip-8.1.2
sudo -H pip install --upgrade pip

sudo python setup.py install

sudo -H pip install --upgrade zmq
sudo -H pip install ipython
sudo -H pip install jupyter
sudo apt-get install -qq libhdf5-dev netcdf-bin libnetcdf-dev 
sudo -H pip install netcdf4
