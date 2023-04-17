#!/bin/sh
RED_COLOR='\e[1;31m' #红色
GREEN_COLOR='\e[1;32m' #绿色
RES='\e[0m' #尾

Install() {
img="https://raw.iqiq.io/3wking/3wking.github.io/main/OpenWrt/IMG/Yamato_Kancolle.mp4"
rm -f /www/luci-static/argon/background/*
if [ $? -eq 0 ]; then
	echo -e "${GREEN_COLOR}正在下载 $img ...${RES}"
	curl --connect-timeout 30 -m 600 -#kLo /www/luci-static/argon/background/Yamato_Kancolle.mp4 "${img}"
	if [ $? --ne 0 ]; then
		echo -e "${RED_COLOR}下载 $img 失败.${RES}\r\n"
		exit 1
	fi	
	echo -e "\r\n${GREEN_COLOR}安装<argon_img>完成${RES}\r\n"
else
	echo -e "${RED_COLOR}删除原文件失败.${RES}\r\n"
	exit 1
fi
}
(cd && {
	echo -e "\r\n${GREEN_COLOR}安装<argon_img>图片${RES}\r\n" && Install
})