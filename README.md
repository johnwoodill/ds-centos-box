Installation
------------

``` bash
curl https://raw.githubusercontent.com/johnwoodill/ds-centos-box/master/ami-installer.sh > ami-installer.sh
curl https://raw.githubusercontent.com/johnwoodill/ds-centos-box/master/r-packages.R > r-packages.R

sudo passwd johnwoodill

chmod +x ami-installer.sh
sudo -s
./ami-installer.sh
```
