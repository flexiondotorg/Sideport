#!/usr/bin/env bash

function build_wily() {
    #http://wiki.mate-desktop.org/status:1.12
    #https://packages.debian.org/source/sid/<package>gi
    #local PPA="${DIST}-mate"
    local PPA="crazy-mate"
    for DIST in wily
    do
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-common/mate-common_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop/mate-desktop_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-user-guide/mate-user-guide_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmatekbd/libmatekbd_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmatemixer/libmatemixer_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmateweather/libmateweather_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme/mate-icon-theme_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme-faenza/mate-icon-theme-faenza_1.12.0+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja/caja_1.12.2-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-polkit/mate-polkit_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/marco/marco_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-session-manager/mate-session-manager_1.12.1-2.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-settings-daemon/mate-settings-daemon_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-menus/mate-menus_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-panel/mate-panel_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-backgrounds/mate-backgrounds_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-themes/mate-themes_1.12.2+gtk3.18-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-notification-daemon/mate-notification-daemon_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-control-center/mate-control-center_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-screensaver/mate-screensaver_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/engrampa/engrampa_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-media/mate-media_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-power-manager/mate-power-manager_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-system-monitor/mate-system-monitor_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}

        # Extra
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/a/atril/atril_1.12.2-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja-dropbox/caja-dropbox_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja-extensions/caja-extensions_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/eom/eom_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-applets/mate-applets_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-indicator-applet/mate-indicator-applet_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netbook/mate-netbook_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netspeed/mate-netspeed_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-sensors-applet/mate-sensors-applet_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-terminal/mate-terminal_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-user-share/mate-user-share_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-utils/mate-utils_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mozo/mozo_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pluma/pluma_1.12.1-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/python-caja/python-caja_1.12.0-1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/g/gnome-main-menu/gnome-main-menu_1.8.0-5.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
        ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop-environment/mate-desktop-environment_1.12.0+1.dsc -p ppa:ubuntu-mate-dev/${PPA} -c ${DIST}
    done
}

build_wily
