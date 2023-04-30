#!/bin/bash
DDNS="/etc/config/ddns"
ARGON="/etc/config/argon"
Firewall="/etc/config/firewall"
Network="/etc/config/network"


cat >$DDNS<<EOF

config ddns 'global'
	option ddns_dateformat '%F %R'
	option ddns_loglines '250'
	option ddns_rundir '/var/run/ddns'
	option ddns_logdir '/var/log/ddns'

config service '3wxhn'
	option service_name 'aliyun.com'
	option use_ipv6 '0'
	option enabled '1'
	option lookup_host '3wxhn.cn'
	option domain '@.3wxhn.cn'
	option username 'LTAItvzxtlMo5k2B'
	option password 'CUWFM2DDxTR45Z5RkX4jMDsjzjI8gO'
	option ip_source 'network'
	option ip_network 'wan'
	option interface 'wan'
	option use_syslog '2'
	option check_interval '5'
	option check_unit 'minutes'
	option force_interval '48'
	option force_unit 'hours'
	option retry_unit 'seconds'


EOF

cat >$ARGON<<EOF

config global
	option primary '#5e72e4'
	option dark_primary '#483d8b'
	option transparency_dark '0.5'
	option bing_background '0'
	option blur_dark '1'
	option save '保存更改'
	option transparency '0.4'
	option mode 'light'
	option blur '0.5'
EOF

cat >>$Firewall<<EOF

config redirect
	option dest 'lan'
	option target 'DNAT'
	option name '软路由'
	option src 'wan'
	option src_dport '8'
	option dest_ip '10.10.10.10'
	option dest_port '80'

config redirect
	option dest 'lan'
	option target 'DNAT'
	option name '群晖'
	option src 'wan'
	option src_dport '5000'
	option dest_ip '10.10.10.8'
	option dest_port '5000'

config redirect
	option dest 'lan'
	option target 'DNAT'
	option name '群晖4455'
	option src 'wan'
	option src_dport '4455'
	option dest_ip '10.10.10.8'
	option dest_port '445'

config redirect
	option dest 'lan'
	option target 'DNAT'
	option name '群晖-8181'
	option src 'wan'
	option src_dport '8181'
	option dest_ip '10.10.10.8'
	option dest_port '8181'
EOF

cat >>$Network<<EOF

config interface 'MODE'
	option proto 'static'
	option device 'eth1'
	option ipaddr '192.168.1.2'
	option gateway '192.168.1.1'
	option defaultroute '0'
EOF