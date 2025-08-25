#!/bin/bash

#删除feeds中的插件
# rm -rf ./feeds/ssrp/ipt2socks
# rm -rf ./feeds/ssrp/hysteria
# rm -rf ./feeds/ssrp/v2ray-plugin
# rm -rf ./feeds/ssrp/chinadns-ng
# rm -rf ./feeds/ssrp/dns2tcp
# rm -rf ./feeds/ssrp/naiveproxy
# rm -rf ./feeds/ssrp/shadowsocksr-libev
# rm -rf ./feeds/ssrp/v2ray-plugin
# rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/chinadns-ng
rm -rf ./feeds/packages/net/sing-box
rm -rf ./feeds/packages/net/xray-core
# rm -rf ./feeds/luci/applications/luci-app-mosdns
# rm -rf ./feeds/luci/applications/luci-app-smartdns
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/luci/applications/luci-app-passwall2
rm -rf ./feeds/luci/applications/luci-app-openclash


#克隆插件
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/pwpage


mkdir package/small
pushd package/small
#adguardhome
# git clone -b 2023.10 --depth 1 https://github.com/XiaoBinin/luci-app-adguardhome.git
#lucky
# git clone -b main --depth 1 https://github.com/sirpdboy/luci-app-lucky.git
#smartdns
# git clone -b lede --depth 1 https://github.com/pymumu/luci-app-smartdns.git
# git clone -b master --depth 1 https://github.com/pymumu/smartdns.git
#ssrp
# git clone -b master --depth 1 https://github.com/fw876/helloworld.git
#passwall
#git clone -b main --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
#passwall2
git clone -b main --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git
#mosdns
# git clone -b v5 --depth 1 https://github.com/sbwml/luci-app-mosdns.git
#openclash
git clone -b master --depth 1 https://github.com/vernesong/OpenClash.git
#modem
# git clone -b main --depth 1 https://github.com/FUjr/modem_feeds.git


popd

echo "packages executed successfully!"
