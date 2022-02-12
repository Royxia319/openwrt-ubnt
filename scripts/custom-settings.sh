#!/bin/bash

# NTP server
sed -i "s/time1.cloud.tencent.com/time2.cloud.tencent.com/" package/base-files/files/bin/config_generate
sed -i "s/ntp.aliyun.com/time1.cloud.tencent.com/" package/base-files/files/bin/config_generate
sed -i "s/time.ustc.edu.cn/time3.cloud.tencent.com/" package/base-files/files/bin/config_generate
sed -i "s/cn.pool.ntp.org/time4.cloud.tencent.com/" package/base-files/files/bin/config_generate

# LuCI theme
rm -rf package/lean/luci-theme-argon
cd package/lean/ || exit
git clone https://github.com/jerrykuku/luci-theme-argon.git
cd luci-theme-argon/ || exit
git checkout 6e50192
