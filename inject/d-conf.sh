#!/usr/bin/env bash

sed -i 's/--enable-gtk-doc/--enable-gtk-doc --disable-editor/' debian/rules
#sed -i 's/2\.27\.2/2\.26\.0/' configure
#sed -i 's/2\.27\.2/2\.26\.0/' configure.ac
#sed -i 's/2\.27\.2/2\.26\.0/' debian/control
#sed -i 's/2\.27\.2/2\.26\.0/' debian/control.in
echo "debian/tmp/usr/bin" > debian/dconf-tools.install
