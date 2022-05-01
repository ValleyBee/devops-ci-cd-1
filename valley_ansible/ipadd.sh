#! /bin/sh
ip addr add 192.168.8.114/24 dev ens18 label ens18:1
echo add address 192.168.8.114
ip route del default via 192.168.100.4
echo replacing  defautl route
ip route add default via 192.168.8.1
echo success!
