#!/usr/bin/env bash
set -x

# Vagrant provision script for installing wradlib

# Install wradlib depencies
sudo -H pip install numpy 
sudo -H apt-get install -qq libfontconfig1 python-gdal python-h5py
sudo -H pip install xmltodict


# Install wradlib
cd ~
mkdir tmp
cd tmp
git clone --depth=1 https://github.com/wradlib/wradlib.git
cd wradlib
sudo python setup.py install
echo "export GDAL_DATA=/usr/share/gdal/1.10/" >> ~/.profile
cd ~
mkdir wradlib_short_course
cp -a tmp/wradlib/notebooks/ ~/wradlib_short_course/

# Install wradlib data
git clone --depth=1 https://github.com/wradlib/wradlib-data.git
echo "export WRADLIB_DATA=~/wradlib-data" >> ~/.profile
