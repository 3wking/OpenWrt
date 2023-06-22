# OpenWrt
## 在线编译 ：
#### 
* [在线编译教程](/Compile/Online/README.md)
## 本地编译 ：
#### 环境安装：
```sh
wget -O - https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Compile/Local_Compilation/env.sh | bash
```
* [OpenWrt插件名](/Compile/Local/Pluginqa_Name.txt)
* [OpenWrt插件管理](/Compile/Local/Plug-ina_Manager.txt)
#### 本地编译教程：
* [LEDE](/Compile/Local/LEDE.md)
* [immortalwrt](/Compile/Local/immortalwrt.md)
* [openwrt-redmi](/Compile/Local/openwrt-redmi.md)

## Friendlywrt ：
##### 精简修改friendlywrt
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/friendlywrt/remove.sh | bash
```
##### 修改配置
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/OpenWrt/config.sh | bash
```

## 插件 ：
##### Openclash_内核安装
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Shell/clash_core.sh | bash
```
##### aliyundrive-webdav_安装
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Shell/aliyundrive-webdav.sh | bash
```
##### alist_安装
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Shell/alist.sh | bash
```
##### argon_img
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Shell/argon_img.sh | bash
```
##### argon_安装
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Shell/argon.sh | bash
```
##### 小Q助手_安装
```sh
curl -k  https://cdn.jsdelivr.net/gh/3wking/OpenWrt@main/Shell/Assistant.sh | bash
```