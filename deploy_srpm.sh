#!/bin/bash

. common.sh

SRPM=$1
if [ -z $SRPM ]; then
    echo "usage: $0 [kernel srpm]"
    exit 1
fi

mkdir -p rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS} 2>/dev/null || true
rpm --define "_topdir $PWD/rpmbuild" -i $SRPM
# the fedora doesn't have sh-uils, however, we don't need it. skip it.
sed -i "s/sh-utils, //" ./rpmbuild/SPECS/kernel.spec

docker run --rm -ti --name=aarch64-kernel-build -w /root/rpmbuild \
-v $PWD/rpmbuild:/root/rpmbuild \
$DOCKER_IMG \
rpmbuild -bp --target=aarch64 SPECS/kernel.spec

