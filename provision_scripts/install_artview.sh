 #!/usr/bin/env bash
#This script clones the artview repository to the VM and runs install

#install dependencies

sudo apt-get -qq install python-qt4

#download and install
cd /tmp
git clone https://github.com/nguy/artview.git artview
cd artview
sudo python setup.py install


cd ~
