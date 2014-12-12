#!/usr/bin/env bash

# License
#
# Automated script for side porting Debian packages to Ubuntu and
# publishing them in a Launchpad PPA.
# Copyright (c) 2014 Flexion.Org, http://flexion.org/
#
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# References
#  - http://tjworld.net/wiki/Linux/Ubuntu/Packages/PPA
#  - https://www.ebower.com/docs/ubuntu-ppa/
#
# Requires
#  - devscripts, debhelper, dput, quilt

# 'source' my common functions
if [ -r common.sh ]; then
    source common.sh
    if [ $? -ne 0 ]; then
        echo "ERROR! Couldn't import common functions from common.sh"
        exit 1
    fi
else
    echo "ERROR! Couldn't import common functions from common.sh"
    exit 1
fi

check_ubuntu "all"

function build_options() {
    BUILD_DSC=`echo ${BUILD_URL##*\/}`
    BUILD_VER=`echo ${BUILD_DSC%-*}`
    BUILD_PKG=`echo ${BUILD_DSC%_*}`
    BUILD_SNP=`echo ${BUILD_VER##*+} | sed 's/\.dsc//'`
    BUILD_GRP=`echo ${BUILD_VER##*~}`

    echo "     Build Distro     : $BUILD_CODE"
    echo "     Package URL      : $BUILD_URL"
    echo "     Package DSC      : $BUILD_DSC"
    echo "     Package Name     : $BUILD_PKG"
    echo "     Package Version  : $BUILD_VER"
    echo "     Package Suffix   : $BUILD_SUFFIX"
    if [ "${BUILD_SNP}" != "${BUILD_VER}" ]; then
        echo "     Package Snapshot : ${BUILD_SNP}"
    else
        echo "     Package Snapshot : n/a"
    fi

    #if [ "${BUILD_GRP}" != "${BUILD_VER}" ]; then
    #    echo "     Package Group    : ${BUILD_GRP}"
    #else
    #    echo "     Package Group    : n/a"
    #fi

    echo "     Package Message  : ${BUILD_MESSAGE}"
    echo "     Package Script   : ${BUILD_SCRIPT}"
    echo "     Packager Email   : $DEBEMAIL"
    echo "     Packager Name    : $DEBFULLNAME"
    echo "     PPA              : $BUILD_PPA"
    echo "     PPA Key          : $BUILD_KEY"
    echo "     Log file         : ${log}"
}

function usage() {
    echo
    echo "Usage"
    echo "  ${0} -u http://www.example.org/package.dsc"
    echo ""
    echo "Required parameters"
    echo "  -u : The URL to a .dsc file."
    echo "  -k : The key id to sign your packages with. Example: 0864983E"
    echo "  -p : The PPA to upload your packages to. Example: ppa:another/ppa"
    echo ""
    echo "Optional parameters"
    echo "  -c : The distribution codename or "all". Default: ${BUILD_CODE}"
    echo "  -e : The email address to use when updating 'debian/changes'."
    echo "  -f : The fullname to use when updating 'debian/changes'."
    echo "  -m : The mesage to use when updating 'debian/changes'. Default: ${BUILD_MESSAGE}"
    echo "  -s : The suffix to add to backported packages. Default \"${BUILD_SUFFIX}\"."
    echo "  -t : Test mode. Builds the packages locally but doesn't upload them."
    echo "  -x : Execute a script. Runs after 'dput' and before 'dch'."
    echo
    build_options
    exit 1
}

BUILD_CODE=${LSB_CODE}
BUILD_URL=""
BUILD_SUFFIX=""
BUILD_TEST=0
BUILD_SCRIPT=""
BUILD_MESSAGE=""

# OK, since this is primarily for my use, create default suitable for me ;-)
if [ "${USER}" == "martin" ] || [ "${USER}" == "wimpr1m" ]; then
    BUILD_PPA="ppa:flexiondotorg/experimental"
    BUILD_KEY="0864983E"
    DEBEMAIL="code@flexion.org"
    DEBFULLNAME="Martin Wimpress"
elif [ "${USER}" == "root" ]; then
    BUILD_PPA="ppa:ubuntu-mate-dev/ppa"
    BUILD_KEY="0864983E"
    DEBEMAIL="code@ubuntu-mate.org"
    DEBFULLNAME="Ubuntu MATE Developers"
else
    BUILD_PPA=""
    BUILD_KEY=""
    DEBEMAIL="${USER}@${CURRENT_DOMAIN}"
    DEBFULLNAME="${USER}"
fi

OPTSTRING=c:e:f:h:k:m:p:s:tu:x:
while getopts ${OPTSTRING} OPT
do
    case ${OPT} in
        c) BUILD_CODE=${OPTARG};;
        e) DEBEMAIL=${OPTARG};;
        f) DEBFULLNAME=${OPTARG};;
        h) usage;;
        k) BUILD_KEY=${OPTARG};;
        m) BUILD_MESSAGE=${OPTARG};;
        p) BUILD_PPA=${OPTARG};;
        s) BUILD_SUFFIX=${OPTARG};;
        t) BUILD_TEST=1;;
        u) BUILD_URL=${OPTARG};;
        x) BUILD_SCRIPT=${OPTARG};;
        *) usage;;
    esac
done

shift "$(( $OPTIND - 1 ))"

if [ -z "${BUILD_URL}" ] || [ -z "${BUILD_PPA}" ] || [ -z "${BUILD_KEY}" ]; then
    usage
else
    echo " [!] Package details "
    build_options
fi

# TODO - This should be less destructive.
export DEBEMAIL
export DEBFULLNAME

# Get the full list of supported targets if we are building for "all"
if [ "${BUILD_CODE}" == "all" ]; then
    BUILD_CODES=`wget -q http://cdimage.ubuntu.com/releases/ -O - | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' | grep '^[[:space:]][a-z]' | grep -v "Parent" | sed 's/\///g' | sed 's/ //g'`
else
    BUILD_CODES=${BUILD_CODE}
fi

for BUILD_CODE in ${BUILD_CODES}
do
    cecho
    ncecho " [!] Building for : "
    cecho "${BUILD_CODE}"

    ncecho " [x] Creating build directory "
    rm -rf /tmp/${BUILD_PKG} >> "$log" 2>&1
    mkdir -p /tmp/${BUILD_PKG} >> "$log" 2>&1
    cd /tmp/${BUILD_PKG} >> "$log" 2>&1
    cecho success

    ncecho " [x] Downloading ${BUILD_URL} "
    dget -u -x "${BUILD_URL}" >> "$log" 2>&1 &
    pid=$!;progress_loop $pid

    # Enter the source tree
    BUILD_SRC=`ls -1d /tmp/${BUILD_PKG}/* | head -n1`
    ncecho " [x] Entering ${BUILD_SRC} "
    cd "${BUILD_SRC}" >> "$log" 2>&1
    cecho success

    # Run the package script
    if [ -x "${BUILD_SCRIPT}" ]; then
        ncecho " [x] Executing ${BUILD_SCRIPT} "
        "${BUILD_SCRIPT}" >> "$log" 2>&1 &
        pid=$!;progress_loop $pid
    else
        ncecho " [x] Executing ${BUILD_SCRIPT} "
        cecho failed
        exit 1
    fi

    # If there is a snapshot reference in the original package then preserve it.
    #if [ "${BUILD_GRP}" != "${BUILD_VER}" ]; then
    #    NEW_VERSION=`head -n1 debian/changelog | cut -d'(' -f2 | cut -d')' -f1 | cut -d'~' -f1`${BUILD_SUFFIX}~${BUILD_CODE}1+${BUILD_GRP}
    #elif [ "${BUILD_SNP}" != "${BUILD_VER}" ]; then
    #    NEW_VERSION=`head -n1 debian/changelog | cut -d'(' -f2 | cut -d')' -f1 | cut -d'~' -f1`~${BUILD_SUFFIX}~${BUILD_CODE}1+${BUILD_SNP}
    #else
        NEW_VERSION=`head -n1 debian/changelog | cut -d'(' -f2 | cut -d')' -f1 | cut -d'~' -f1`${BUILD_SUFFIX}~${BUILD_CODE}1
    #fi

    # Remove any colon prefixing.
    CLEAN_VERSION=`echo ${NEW_VERSION} | cut -d':' -f2`

    # Get the current urgency
    URGENCY=`head -n1 debian/changelog | cut -d'=' -f2`

    ncecho " [x] Creating new version "
    dch --distribution ${BUILD_CODE} --force-distribution --newversion ${NEW_VERSION} --force-bad-version --urgency=${URGENCY} "Back ported from ${BUILD_URL}" >> "$log" 2>&1
    pid=$!;progress_loop $pid

    if [ -n "${BUILD_MESSAGE}" ]; then
        ncecho " [x] Appending build message "
        dch --append "${BUILD_MESSAGE}" >> "$log" 2>&1 &
        pid=$!;progress_loop $pid
    fi

    # TODO - Should I add '-d' to override unmet dependancies?
    #  dpkg-buildpackage: warning: Build dependencies/conflicts unsatisfied; aborting.
    #  dpkg-buildpackage: warning: (Use -d flag to override.)

    ncecho " [x] Building and signing package "
    dpkg-buildpackage -d -S -sa -k${BUILD_KEY} >> "$log" 2>&1 &
    pid=$!;progress_loop $pid

    # Only upload if test mode is disabled.
    if [ ${BUILD_TEST} -eq 0 ]; then
        ncecho " [x] Uploading package : ${BUILD_PKG}_${CLEAN_VERSION}_source.changes "
        dput ${BUILD_PPA} ../${BUILD_PKG}_${CLEAN_VERSION}_source.changes >> "$log" 2>&1 &
        pid=$!;progress_loop $pid
    else
        ncecho " [x] Uploading package : dput ${BUILD_PPA} ${BUILD_PKG}_${CLEAN_VERSION}_source.changes "
        cecho "test mode"
    fi
done
