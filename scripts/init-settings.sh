#!/bin/bash

#更改默认地址为192.168.8.1
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/luci2/bin/config_generate

# 给config下的文件增加权限
chmod 644 files/etc/config/*

#更改design主题为白色
# sed -i 's/dark/light/g' feeds/luci/applications/luci-app-design-config/root/etc/config/design

#修改密码
sed -i 's/^root:.*:/root:$1$q6Qf.IUu$Bd2tIMFHYYNOsmsIRBwHC0:19650:0:99999:7:::/g' package/base-files/files/etc/shadow


echo "init-settings executed successfully!"
