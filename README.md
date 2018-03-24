Overview
------------
This repo provides bash and r-scripts for installation on Google Cloud using image Centos 7. Installation includes:

* Development Tools
* R-core and R-devel
* Rstudio server (port 80)
* Required files for R and Python
* Dropbox Uploader (https://github.com/andreafabrizi/Dropbox-Uploader)


Installation
------------

``` bash
curl https://raw.githubusercontent.com/johnwoodill/ds-centos-box/master/ds_centos7_install.sh > ds_centos7_install.sh
curl https://raw.githubusercontent.com/johnwoodill/ds-centos-box/master/r-packages.R > r-packages.R

sudo usermod -aG wheel johnwoodill
chmod +x ds_centos7_install.sh
sudo ./ds_centos7_install.sh
```

Instructions
------------

``` bash

# Uploading to Dropbox
./dropbox_uploader.sh upload r-packages.R /Apps/r-packages.R

```
