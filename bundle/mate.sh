#!/usr/bin/env bash


function build_precise() {
for DIST in precise
do
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-common/mate-common_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop/mate-desktop_1.8.1+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmatekbd/libmatekbd_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmateweather/libmateweather_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme/mate-icon-theme_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme-faenza/mate-icon-theme-faenza_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja/caja_1.8.1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-polkit/mate-polkit_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/marco/marco_1.8.1+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-session-manager/mate-session-manager_1.8.1-4~bpo70+2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-settings-daemon/mate-settings-daemon_1.8.1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-menus/mate-menus_1.8.0-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-panel/mate-panel_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-backgrounds/mate-backgrounds_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-themes/mate-themes_1.8.1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-notification-daemon/mate-notification-daemon_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-control-center/mate-control-center_1.8.2+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-screensaver/mate-screensaver_1.8.0-5.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/engrampa/engrampa_1.8.0+dfsg1-6.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-media/mate-media_1.8.0+dfsg1-3.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-power-manager/mate-power-manager_1.8.0+dfsg1-3.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-system-monitor/mate-system-monitor_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}

    # Extra
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/a/atril/atril_1.8.0+dfsg1-2~bpo70+1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja-extensions/caja-extensions_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/eom/eom_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-applets/mate-applets_1.8.0+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-indicator-applet/mate-indicator-applet_1.8.0-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netbook/mate-netbook_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netspeed/mate-netspeed_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-sensors-applet/mate-sensors-applet_1.8.0+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-terminal/mate-terminal_1.8.0+dfsg1-3.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-user-share/mate-user-share_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-utils/mate-utils_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mozo/mozo_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pluma/pluma_1.8.1+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/python-caja/python-caja_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/g/gnome-main-menu/gnome-main-menu_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop-environment/mate-desktop-environment_1.8.0+7.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    return
done
}

function build_trusty() {
for DIST in trusty
do
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-common/mate-common_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop/mate-desktop_1.8.1+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmatekbd/libmatekbd_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/libm/libmateweather/libmateweather_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme/mate-icon-theme_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-icon-theme-faenza/mate-icon-theme-faenza_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja/caja_1.8.1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-polkit/mate-polkit_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/marco/marco_1.8.1+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
# WARNING! This is the wrong source package to use for Trusty
#../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-session-manager/mate-session-manager_1.8.1-4~bpo70+2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST} -s +1
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-settings-daemon/mate-settings-daemon_1.8.1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-menus/mate-menus_1.8.0-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-panel/mate-panel_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-backgrounds/mate-backgrounds_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-themes/mate-themes_1.8.1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-notification-daemon/mate-notification-daemon_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-control-center/mate-control-center_1.8.2+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-screensaver/mate-screensaver_1.8.0-5.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/engrampa/engrampa_1.8.0+dfsg1-6.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-media/mate-media_1.8.0+dfsg1-3.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-power-manager/mate-power-manager_1.8.0+dfsg1-3.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-system-monitor/mate-system-monitor_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}

    # Extra
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/a/atril/atril_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/c/caja-extensions/caja-extensions_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/e/eom/eom_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-applets/mate-applets_1.8.0+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-indicator-applet/mate-indicator-applet_1.8.0-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netbook/mate-netbook_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-netspeed/mate-netspeed_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-sensors-applet/mate-sensors-applet_1.8.0+dfsg1-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-terminal/mate-terminal_1.8.0+dfsg1-3.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-user-share/mate-user-share_1.8.0+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-utils/mate-utils_1.8.0+dfsg1-4.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mozo/mozo_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pluma/pluma_1.8.1+dfsg1-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/python-caja/python-caja_1.8.0-1.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/g/gnome-main-menu/gnome-main-menu_1.8.0-2.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-desktop-environment/mate-desktop-environment_1.8.0+7.dsc -p ppa:ubuntu-mate-dev/${DIST}-mate -c ${DIST}
    return
done
}

function build_utopic() {
for DIST in utopic
do
    #../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/m/mate-session-manager/mate-session-manager_1.8.1-4~bpo70+2.dsc -p ppa:ubuntu-mate-dev/ppa -c ${DIST} -s +1
    return
done
}


build_precise
build_trusty
build_utopic
