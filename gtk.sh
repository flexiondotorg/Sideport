#!/usr/bin/env bash
./sideport.sh -s +1 \
              -f "Ubuntu MATE Developers" \
              -e code@ubuntu-mate.org \
              -u https://launchpad.net/ubuntu/utopic/+source/gtk+3.0/3.12.2-0ubuntu7/+files/gtk+3.0_3.12.2-0ubuntu7.dsc \
              -c utopic \
              -x /root/PPA/Sideport/inject/gtk.sh \
              -p ppa:ubuntu-mate-dev/crazy-mate \
              -k 0864983E \
              -m "Added patch to not release the GDK lock if it hasn't been  acquired yet. LP# 1374030"
