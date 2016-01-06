#!/usr/bin/env bash

function build_wily() {
    #local PPA="${DIST}-mate"
    local PPA="crazy-mate"
    for DIST in xenial
    do
        ../sideport.sh -u http://ftp.de.debian.net/debian/pool/main/m/mate-common/mate-common_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop/mate-desktop_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-user-guide/mate-user-guide_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmatekbd/libmatekbd_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmatemixer/libmatemixer_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmateweather/libmateweather_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        return
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme-faenza/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-polkit/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/marco/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-session-manager/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-settings-daemon/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST} -t
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-menus/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-panel/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-backgrounds/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-themes/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST} -t
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-notification-daemon/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-control-center/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-screensaver/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/engrampa/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-media/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST} -t
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-power-manager/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-system-monitor/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}

        # Extra
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/a/atril/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja-dropbox/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja-extensions/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/eom/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-applets/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-indicator-applet/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netbook/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netspeed/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-sensors-applet/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-terminal/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-user-share/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-utils/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mozo/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pluma/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/python-caja/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/g/gnome-main-menu/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop-environment/ -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
    done
}

build_wily
