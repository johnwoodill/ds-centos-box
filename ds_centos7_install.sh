#!/bin/bash -x

echo "johnwoodill:amstelthedog" | chpasswd

mkdir /home/johnwoodill/data
mkdir /home/johnwoodill/models

#usermod -aG wheel johnwoodill

# Install necessary packages

echo "$(tput setaf 2)-= UPDATING SYSTEM =-$(tput sgr0)"
sleep 5
yum -y update 

echo "$(tput setaf 2)-= INSTALLING PACKAGES =-$(tput sgr0)"
sleep 5
yum -y install epel-release wget htop libcurl libcurl-devel libxml2 libxml2-devel curl openssl openssl-devel postgresql postgresql-devel libpng libpng-devel libjpeg libjpeg-devel proj proj-devel proj-epsg proj-nad udunits2 udunits2-devel gdal gdal-devel gdal-libs R-java R-cpp libcurl-devel git

yum -y groupinstall "Development Tools"

echo "$(tput setaf 2)-= INSTALLING R =-$(tput sgr0)"
sleep 5
yum -y install R-core R-devel

# Install rstudio server
echo "$(tput setaf 2)-= INSTALLING RSTUDIO SERVER =-$(tput sgr0)"
sleep 5
wget https://download2.rstudio.org/rstudio-server-rhel-1.1.442-x86_64.rpm
yum -y install rstudio-server-rhel-1.1.442-x86_64.rpm
sudo systemctl status rstudio-server.service
sudo systemctl enable rstudio-server.service
echo "www-port=80" >>  /etc/rstudio/rserver.conf

echo "$(tput setaf 2)-= INSTALLING R PACKAGES =-$(tput sgr0)"
sleep 5
Rscript r-packages.R

# Install Dropbox-Uploader (https://github.com/andreafabrizi/Dropbox-Uploader)
echo "$(tput setaf 2)-= INSTALLING DROPBOX-UPLOADER =-$(tput sgr0)"
sleep 5
curl "https://raw.githubusercontent.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh" -o dropbox_uploader.sh
chmod +x dropbox_uploader.sh
echo -e "K8Sh-q51ZRwAAAAAAAAVGrTPnEjSnj_VGvAYxfotUvfnfQba2pU7phDzhXJNvzMH\ny\n" | ./dropbox_uploader.sh

echo "$(tput setaf 2)-= INSTALLATION COMPLETE. PRESS ENTER TO RESTART SERVER =-$(tput sgr0)"
read 
echo -e "amstelthedog" | shutdown -r now


# Install Anaconda
#wget https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
#bash Anaconda3-4.3.0-Linux-x86_64.sh
