#!/bin/bash
###########################################################################
##  Ubuntu Desktop LXDE Version 1.01
##  Built in :
##  - Ffmpeg
##  - Sox
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
#install gdata
cd /
wget https://github.com/google/gdata-python-client/archive/master.zip --no-check-certificate
mv master gdata.tar.gz
tar xf gdata.tar.gz
rm -f gdata.tar.gz
cd gdata
ls INSTALL.txt MANIFEST PKG-INFO README.txt RELEASE_NOTES.txt pydocs samples setup.py src tests
python setup.py install
apt-get update
#install youtube uploader
cd /
wget https://github.com/nurd1n/Youtube-Upload/archive/master.zip --no-check-certificate
mv master youtube-upload.tar.gz
tar xf youtube-upload.tar.gz
rm -f youtube-upload.tar.gz
cd youtube-upload
ls CHANGELOG README bin examples setup.py youtube_upload
python setup.py install
apt-get update
#install setup tools python
cd /
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
apt-get update
#install progressbar
cd /
wget http://moviestreamfullhd.com/script/progressbar-2.3.tar.gz
tar xf progressbar-2.3.tar.gz
rm -f progressbar-2.3.tar.gz
cd progressbar-2.3
python setup.py install
apt-get update
#install firefox
cd /
sudo apt-get install firefox
sudo apt-get update
#install mechanize & beautifulsoup
cd /
easy_install mechanize
easy_install BeautifulSoup4
apt-get update
#install youtube-dl
easy_install youtube-dl
#install bleachbit as ccleaner
sudo apt-get install bleachbit
#install gedit
sudo apt-get install gedit
#install terminator
sudo apt-get install terminator
#install filezilla
sudo apt-get install filezilla
sudo apt-get update
echo "########################################################################"
echo "#################             Install Complete         #################"
echo "########################################################################"
echo " Created by Nurdianto : https://www.facebook.com/nurdiantocyk           "
echo "########################################################################"
echo "                       https://github.com/nurd1n                        "
echo "########################################################################"
