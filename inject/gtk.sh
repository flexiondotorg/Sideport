#!/usr/bin/env bash

wget https://github.com/GNOME/gtk/commit/79c3ff3c4ed74bbcc820dac2d5180fa4d48d55ec.patch -O /tmp/gtk+3.0/gtk+3.0-3.12.2/debian/patches/110_do_not_release_GDK_lock_if_has_not_been_aquired.patch
echo 110_do_not_release_GDK_lock_if_has_not_been_aquired.patch >> /tmp/gtk+3.0/gtk+3.0-3.12.2/debian/patches/series
