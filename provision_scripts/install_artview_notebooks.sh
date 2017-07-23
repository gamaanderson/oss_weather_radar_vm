#!/usr/bin/env bash
#This script clones the artview course to the VM and runs a script
#to grab data
set -x
# Get the ARTView notebooks from GitHub
cd ~
#install git and zip/unzip just in case
sudo -H apt-get install -qq git
sudo -H apt-get install -qq zip unzip
git clone https://github.com/gamaanderson/artview_course.git artview_short_course

# Optionally get example data,
cd artview_short_course
git clone https://github.com/gamaanderson/artview_data.git data
