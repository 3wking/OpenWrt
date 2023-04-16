# OpenWrt

## supes.top ：
* [在线编译](https://supes.top/)
* [编译插件](https://raw.iqiq.io/3wking/OpenWrt/main/Supes/app)
* [ARM初始化脚本](https://raw.iqiq.io/3wking/OpenWrt/main/Supes/arm_shell)
* [X86初始化脚本](https://raw.iqiq.io/3wking/OpenWrt/main/Supes/x86_shell)

## Friendlywrt ：
##### 修改配置
```sh
wget https://3wking.github.io/OpenWrt/config.sh -O config.sh && chmod +x config.sh && ./config.sh
```
##### 修改配置_代理
```sh
wget -O - https://raw.iqiq.io/3wking/3wking.github.io/main/OpenWrt/config.sh | bash
```
##### 精简修改friendlywrt
```sh
wget https://3wking.github.io/OpenWrt/friendlywrt/remove2.sh -O remove.sh && chmod +x remove.sh && ./remove.sh
```
##### 精简修改friendlywrt_代理
```sh
wget -O - https://raw.iqiq.io/3wking/OpenWrt/main//friendlywrt/remove0.sh | bash
```

## 插件 ：
##### Openclash_内核安装
```sh
wget -O - https://raw.iqiq.io/3wking/OpenWrt/main/Shell/openclash.sh | bash
```
##### argon_安装
```sh
wget -O - https://raw.iqiq.io/3wking/OpenWrt/main/Shell/argon.sh | bash
```
##### argon_img
```sh
wget -O - https://raw.iqiq.io/3wking/OpenWrt/main/Shell/argon_img.sh | bash
```
