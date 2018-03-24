Installation
------------

``` bash
curl https://raw.githubusercontent.com/johnwoodill/ds-centos-box/master/ami-installer.sh > ami-installer.sh
curl https://raw.githubusercontent.com/johnwoodill/ds-centos-box/master/r-packages.R > r-packages.R

sudo usermod -aG wheel johnwoodill
chmod +x ami-installer.sh
sudo ./ami-installer.sh
```

Instructions
------------

``` bash

# Uploading to Dropbox
./dropbox_uploader.sh upload file.txt /Apps/file.txt

```
