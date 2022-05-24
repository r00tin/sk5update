#!/bin/bash
# mir4 sk多端口补丁
# Author: 0.0<https://www.baidu.com>>
service sockd stop
v=`ip a  |grep inet |grep -v inet6 |grep -v '127.0.0.1' |awk '{print $2}' |awk -F / '{print$1}'`
echo $v
echo "# Generate by sockd.info" > /etc/danted/sockd.conf
echo "# Generate interface $v" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8080" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8001" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8002" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8003" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8004" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8005" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8006" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8007" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8008" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8009" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8010" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8011" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8012" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8013" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8014" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8015" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8016" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8017" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8018" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8019" >> /etc/danted/sockd.conf
echo "internal: $v  port = 8020" >> /etc/danted/sockd.conf
echo "external: $v" >> /etc/danted/sockd.conf

echo "method: pam none" >> /etc/danted/sockd.conf
echo "clientmethod: none" >> /etc/danted/sockd.conf
echo "user.privileged: root" >> /etc/danted/sockd.conf
echo "user.notprivileged: sockd" >> /etc/danted/sockd.conf
echo "logoutput: /var/log/sockd.log" >> /etc/danted/sockd.conf

echo "client pass {" >> /etc/danted/sockd.conf
echo "        from: 0.0.0.0/0  to: 0.0.0.0/0" >> /etc/danted/sockd.conf
echo "}" >> /etc/danted/sockd.conf
echo "client block {" >> /etc/danted/sockd.conf
echo "        from: 0.0.0.0/0 to: 0.0.0.0/0" >> /etc/danted/sockd.conf
echo "}" >> /etc/danted/sockd.conf
echo "pass {" >> /etc/danted/sockd.conf
echo "        from: 0.0.0.0/0 to: 0.0.0.0/0" >> /etc/danted/sockd.conf
echo "        protocol: tcp udp" >> /etc/danted/sockd.conf
echo "        method: pam" >> /etc/danted/sockd.conf
echo "        log: connect disconnect" >> /etc/danted/sockd.conf
echo "}" >> /etc/danted/sockd.conf
echo "block {" >> /etc/danted/sockd.conf
echo "        from: 0.0.0.0/0 to: 0.0.0.0/0" >> /etc/danted/sockd.conf
echo "        log: connect error" >> /etc/danted/sockd.conf
echo "}" >> /etc/danted/sockd.conf
service sockd adduser 112233 112233
service sockd start
clear
echo -e "\033[33m ，运行完毕，本脚本由年华提供，已添加8011-8020端口，账号密码112233.\033[0m"
