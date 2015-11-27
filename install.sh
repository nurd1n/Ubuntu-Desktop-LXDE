#!/bin/bash
###########################################################################
##  Ubuntu Desktop LXDE Version 1.01
##  Built in :
##  - Ffmpeg
##  - Sox
##  - Unzip
##  - Gdata
##  - Youtube Uploader
##  - Youtube Downloader (youtube-dl)
##  - Python tools
##  - Progressar
##  - Mechanize 
##  - BeautifulSoup
##  - Firefox
##  - Gedit
##  - Terminator
##  - Filezilla
###########################################################################
#install x2go
cd /
apt-get update && apt-get -y install aptitude
apt-get install nano
echo "deb http://packages.x2go.org/debian squeeze main" >> /etc/apt/sources.list
echo "deb-src http://packages.x2go.org/debian squeeze main" >> /etc/apt/sources.list
apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E
apt-get update
apt-get upgrade
apt-get dist-upgrade
aptitude update && aptitude install x2go-keyring
aptitude install x2goserver
apt-get install xorg lxde-core
#install ffmpeg
cd /
apt-get install ffmpeg
apt-get update
#install sox
apt-get install sox
apt-get install libsox-fmt-mp3
#install unzip
apt-get install unzip
#install gdata
cd /
wget https://github.com/google/gdata-python-client/archive/master.zip --no-check-certificate
unzip master.zip
rm -f master.zip
cd gdata-python-client-master
python setup.py install
#install youtube uploader
cd /
wget https://github.com/nurd1n/Youtube-Upload/archive/master.zip --no-check-certificate
unzip master.zip
rm -f master.zip
cd Youtube-Upload-master
python setup.py install
#install setup tools python
cd /
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
#install progressbar
cd /
wget https://pypi.python.org/packages/source/p/progressbar2/progressbar2-2.7.3.tar.gz --no-check-certificate
tar xf progressbar2-2.7.3.tar.gz
rm -f progressbar2-2.7.3.tar.gz
cd progressbar2-2.7.3
python setup.py install
#install firefox
cd /
sudo apt-get install firefox
#install mechanize & beautifulsoup
cd /
easy_install mechanize
easy_install BeautifulSoup4
#install youtube-dl
easy_install youtube-dl
#install bleachbit as ccleaner
apt-get install bleachbit
#install gedit
apt-get install gedit
#install terminator
apt-get install terminator
#install filezilla
apt-get install filezilla
apt-get update
echo "########################################################################"
echo "#################             Install Complete         #################"
echo "########################################################################"
echo " Created by Nurdianto : https://www.facebook.com/nurdiantocyk           "
echo "########################################################################"
echo "                       https://github.com/nurd1n                        "
echo "########################################################################"
