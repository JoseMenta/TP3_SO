# syntax=docker/dockerfile:1
FROM ubuntu
RUN apt update
RUN apt-get update
RUN apt install -y git
RUN apt-get install -y build-essential flex bison
RUN apt-get install -y texinfo
RUN apt-get install -y libmpc-dev libgmp-dev libmpfr-dev
RUN apt-get install -y grub-pc
RUN apt-get install -y qemu-system-i386
RUN apt-get install -y qemu-utils