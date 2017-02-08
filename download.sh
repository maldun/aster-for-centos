#!/bin/bash

source "$(dirname "$0")"/variables.sh


################
# Paths        #
################

mkdir -p ${ASTER_BASE}
mkdir -p ${EXTLIBS}

#########################
# Downloads
#########################

cd ${DOWNL}
#wget http://www.code-aster.org/FICHIERS/aster-full-src-${ASTER_FULL}.noarch.tar.gz
wget http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm


################
# yum packages #
################
#yum -y install glibc-static zlib zlib-static krb5-devel python2-devel libstdc++-static blas lapack flex tk numpy
rpm -Uvh rpmforge-release*rpm

#########################
# Unpack
#########################

#tar -xvf ${ASTER_FULL}
#cd aster-full-src-${ASTER_SUB}/SRC

