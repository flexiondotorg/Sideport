#!/usr/bin/env bash

# Submit Postgres packages to my PPA for building

# debhelper
#for DIST in lucid maverick
#do
#    ../sideport.sh -u https://launchpad.net/ubuntu/natty/+source/debhelper/8.1.2ubuntu4/+files/debhelper_8.1.2ubuntu4.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
#done

# postgres
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/postgresql-common/postgresql-common_128.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/postgresql-9.1/postgresql-9.1_9.1.2-4.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done

# pgadmin3
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/pgadmin3/pgadmin3_1.14.0-2.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done

# geos
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/g/geos/geos_3.2.2-3.1.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done

# postgis
for DIST in lucid maverick natty oneiric precise
do
    ../sideport.sh -u http://ftp.de.debian.org/debian/pool/main/p/postgis/postgis_1.5.3-2.dsc -p ppa:flexiondotorg/postgres -c ${DIST}
done
