#!/bin/bash
set -xueo pipefail

yum -y -q update
yum -y -q install epel-release
yum -y -q update

yum -y -q --verbose install \
    "@Development Tools" \
    attr \
    autoconf \
    bind \
    bind-utils \
    binutils \
    bison \
    ccache \
    cups-devel \
    curl \
    dbus-devel \
    docbook-dtds \
    docbook-style-xsl \
    gcc \
    gdb \
    git \
    glibc-common \
    gnutls-devel \
    gpgme-devel \
    jansson-devel \
    keyutils-libs-devel \
    krb5-devel \
    krb5-workstation \
    libacl-devel \
    libaio-devel \
    libarchive-devel \
    libattr-devel \
    libblkid-devel \
    libbsd-devel \
    libnsl2-devel \
    libpcap-devel \
    libsemanage-python \
    libtirpc-devel \
    libxml2-devel \
    libxslt \
    lmdb-devel \
    lmdb-devel \
    make \
    mlocate \
    ncurses-devel \
    nettle-devel \
    openldap-devel \
    pam-devel \
    perl-ExtUtils-MakeMaker \
    perl-Parse-Yapp \
    perl-Test-Base \
    perl-core \
    pkgconfig \
    policycoreutils-python \
    popt-devel \
    procps \
    psmisc \
    pygpgme \
    python-crypto \
    python-devel \
    python-dns \
    python-markdown \
    python3-crypto \
    python3-dns \
    python3-markdown \
    python34-devel \
    readline-devel \
    redhat-lsb \
    rpcgen \
    sudo \
    systemd-devel \
    vim \
    wget \
    yum-utils \
    zlib-devel

yum clean all

# gen locale
localedef -c -i en_US -f UTF-8 en_US.UTF-8

# no update-locale, diy
# LC_ALL is not valid in this file
echo LANG="en_US.UTF-8" > /etc/locale.conf

# set both for safe
echo LC_ALL="en_US.UTF-8" >> /etc/environment
echo LANG="en_US.UTF-8" >> /etc/environment