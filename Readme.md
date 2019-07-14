# docker_kernel_rpm_builder
The kernel rpm builder.
It includes a Dockerfile for building the docker container of kernel rpm builder.
Currently, it provides the aarch64 cross build environment.
The base image is based on fedora:lastest and install the needed rpms.

## Build the docker image
Just run the script:

	./build_docker_image.sh

The image name will be **aarch64-kernel-build**.

## Deploy the kernel source rpm
Now, you can setup you kernel rpm by executing the script:

	./usage: ./deploy_srpm.sh [kernel srpm]

There will be a **rpmbuild** directory under current folder.
You can edit the build config or edit kernel code here.

## Build the kernel rpm
When everything is ready. Now you can build the kernel rpm by executing the script:

	./build_kernel.sh

The kernel rpms will be in **rpmbuild/RPMS/**

Enjoy it.
