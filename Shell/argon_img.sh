#!/bin/sh
img="https://raw.iqiq.io/3wking/3wking.github.io/main/OpenWrt/IMG/Yamato_Kancolle.mp4"
install() {
echo "下载 img 图片......" 
rm -f /www/luci-static/argon/background/* && curl --connect-timeout 30 -m 600 -#kLo /www/luci-static/argon/background/Yamato_Kancolle.mp4 "${img}"
}
(cd && {
	echo "安装 argon_img 图片" && install && echo "安装 argon_img 图片完成"
})