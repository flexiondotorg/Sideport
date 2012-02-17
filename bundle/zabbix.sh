#!/usr/bin/env bash

# Submit Zabbix packages to my PPA for building

# autotools-dev
for DIST in lucid
do
    ../sideport.sh -u https://launchpad.net/ubuntu/+archive/primary/+files/autotools-dev_20110511.1.dsc -c ${DIST}
done

# zabbix
#for DIST in lucid
#do
#    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/z/zabbix/zabbix_1.8.10-1.dsc -c ${DIST}
#done
