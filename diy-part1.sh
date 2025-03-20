#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo "Checking and adding custom feed for SoftEther..."
if ! grep -q "softether" feeds.conf.default; then
    echo "src-git softether https://github.com/0xflotus/openwrt-softether.git" >> feeds.conf.default
fi
echo "Setting download mirror..."
echo "CONFIG_MIRROR=\"http://downloads.openwrt.org\"" >> .config
