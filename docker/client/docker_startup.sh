#!/bin/bash
sleep 2
umount /etc/resolv.conf && rm /etc/resolv.conf && ln -s /etc/resolvconf/run/resolv.conf /etc/resolv.conf
mkdir -p /sbin/docker && \
  mv /sbin/dhclient /sbin/docker/dhclient && ln -s /sbin/docker/dhclient /sbin/dhclient && \
  mv /usr/sbin/tcpdump /sbin/docker/tcpdump && ln -s /sbin/docker/tcpdump /usr/sbin/tcpdump
bash -c $@
