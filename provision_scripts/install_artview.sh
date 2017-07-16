 #!/usr/bin/env bash
#This script clones the artview repository to the VM and runs install

#install dependencies

sudo apt-get install python-qt4

#download and install
git clone https://github.com/nguy/artview.git artview
cd artview
sudo python setup.py install

#download example data
git clone https://github.com/gamaanderson/artview_data.git data

cd
