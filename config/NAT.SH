#!/bin/sh



iptables -F
iptables -t nat -F



iptables -A INPUT -i lo -j ACCEPT


iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p udp --dport 51820 -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT


iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE


iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

iptables -A FORWARD -i wg0 -o enp0s9 -j ACCEPT
iptables -A FORWARD -i wg0 -o enp0s8 -j ACCEPT
iptables -A FORWARD -i wg0 -o enp0s3 -j ACCEPT

iptables -A FORWARD -i enp0s8 -o enp0s3 -j ACCEPT
iptables -A FORWARD -i enp0s9 -o enp0s3 -j ACCEPT


iptables -A FORWARD -i enp0s9 -o enp0s8 -j ACCEPT
iptables -A FORWARD -i enp0s8 -o enp0s9 -j ACCEPT



iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT



echo 1 > /proc/sys/net/ipv4/ip_forward
