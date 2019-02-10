#!/bin/bash

#1. set chain policy to ACCEPT (only filter table can be set)

iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

#2. Flush all tables

iptables -t filter -F
iptables -t nat -F
iptables -t mangle -F

#3. Flush all user defined chains

iptables -X