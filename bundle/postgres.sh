#!/usr/bin/env bash

# Submit Postgres packages to my PPA for building

# debhelper, dpkg
for DIST in lucid maverick natty oneiric
do
    ../sideport.sh -u http://backports.debian.org/debian-backports/pool/main/d/debhelper/debhelper_9.20120608~bpo60+1.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
    ../sideport.sh -u http://backports.debian.org/debian-backports/pool/main/d/dpkg/dpkg_1.16.1.2~bpo60+1.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done

# postgres
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/postgresql-common/postgresql-common_134.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/postgresql-9.1/postgresql-9.1_9.1.4-3.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done

# pgadmin3
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pgadmin3/pgadmin3_1.14.2-2.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done

# geos
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.tku.edu.tw/Linux/LinuxMint/latest/pool/main/g/geos/geos_3.2.2-3.1.dsc -p ppa:flexiondotorg/postgres -c ${DIST} -s ppa2
done

# postgis, pgbouncer
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/postgis/postgis_1.5.3-2.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pgbouncer/pgbouncer_1.5.2-2.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done
