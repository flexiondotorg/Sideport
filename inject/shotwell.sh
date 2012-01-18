#!/usr/bin/env bash

sed -i 's/libwebkitgtk-1\.0-0/libwebkit-1\.0-2/g' /tmp/shotwell/shotwell-0.11.6/debian/control
sed -i 's/libwebkitgtk-dev/libwebkit-dev/g' /tmp/shotwell/shotwell-0.11.6/debian/control
