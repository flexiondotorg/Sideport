#!/usr/bin/env bash

# glib2.0
#../sideport.sh -u https://launchpad.net/ubuntu/+archive/primary/+files/glib2.0_2.27.5-0ubuntu1.dsc -c lucid
#../sideport.sh -u https://launchpad.net/ubuntu/+archive/primary/+files/glib2.0_2.27.5-0ubuntu1.dsc -c maverick

# gconf
#  - Required for lucid to add 'gsettings-data-convert'
#  - Disable 'build-stuff' repo when back porting this, the newer packages break the compile.
#../sideport.sh -u http://archive.ubuntu.com/ubuntu/pool/main/g/gconf/gconf_2.31.91-0ubuntu3.1.dsc -c lucid

# d-conf
#  - http://shotwell.3510.www.nabble.com/Shotwell-missing-dependencies-for-shotwell-0-11-0-td45779.html
#../sideport.sh -u http://archive.ubuntu.com/ubuntu/pool/main/d/d-conf/d-conf_0.7.3-0ubuntu1.dsc -x ../inject/d-conf.sh -m "Configured with --disable-editor" -s ppa8 -c lucid
#../sideport.sh -u http://archive.ubuntu.com/ubuntu/pool/main/d/d-conf/d-conf_0.7.3-0ubuntu1.dsc -x ../inject/d-conf.sh -m "Configured with --disable-editor" -s ppa8 -c maverick

# Shotwell
#../sideport.sh -u https://launchpad.net/~yorba/+archive/ppa/+files/shotwell_0.11.6-1~natty1.dsc -x ../inject/papa-shotwell.sh -m "WebKit library names changed for Lucid compatibility." -s ppa2 -c lucid
#../sideport.sh -u https://launchpad.net/~yorba/+archive/ppa/+files/shotwell_0.11.6-1~natty1.dsc -x ../inject/papa-shotwell.sh -m "WebKit library names changed for Maverick compatibility." -s ppa2 -c maverick
