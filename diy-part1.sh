#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 通过修改diy-part1.sh文件修改feeds.conf.default配置。默认添加fw876/helloworld
# fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
 
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git Whitestorys https://github.com/Whitestorys/openwrt-packages' feeds.conf.default
sed -i '$a src-git Whitecolor https://github.com/Whitestorys/openwrt-extra-packages.git' feeds.conf.default
