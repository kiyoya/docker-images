#!/bin/sh

set -e

[ -d /dev/net ] || mkdir -p /dev/net

[ -c /dev/net/tun ] || mknod /dev/net/tun c 10 200

/etc/openvpn/iptables.sh

exec /usr/sbin/openvpn --config /etc/openvpn/openvpn.conf
