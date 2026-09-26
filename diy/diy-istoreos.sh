#!/bin/bash
# 修改默认IP
# sed -i 's/192.168.100.1/192.168.2.1/g' package/istoreos-files/Makefile
# sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate



# golong26.x依赖
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 26.x feeds/packages/lang/golang

rm -rf package/feeds/packages/rust
git_sparse_clone openwrt-24.10 https://github.com/immortalwrt/packages lang/rust


./scripts/feeds update -a
./scripts/feeds install -a
