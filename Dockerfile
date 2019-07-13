FROM fedora:latest

RUN yum groupinstall -y "Development Tools"
RUN yum install -y ncurses-devel
RUN yum install -y hmaccalc zlib-devel binutils-devel elfutils-libelf-devel
RUN yum install -y kernel-devel
RUN yum install -y asciidoc audit-libs-devel bash bc binutils binutils-devel bison diffutils elfutils
RUN yum install -y elfutils-devel elfutils-libelf-devel findutils flex gawk gcc gettext gzip hmaccalc hostname java-devel
RUN yum install -y m4 make module-init-tools ncurses-devel net-tools newt-devel numactl-devel openssl
RUN yum install -y patch pciutils-devel perl perl-ExtUtils-Embed pesign python-devel python-docutils redhat-rpm-config
RUN yum install -y rpm-build tar xmlto xz zlib-devel
RUN yum install -y kabi-dw nss-tools openssl-devel perl-generators python3-devel python3-docutils
RUN yum install -y gcc-aarch64-linux-gnu

RUN mkdir -p ~/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
RUN echo '%_topdir %(echo $HOME)/rpmbuild' > ~/.rpmmacros
