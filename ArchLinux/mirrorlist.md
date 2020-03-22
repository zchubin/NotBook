# Archlinux 源
## 默认源文件`/etc/pacman.d/mirrorlist`

## 官方源文件
1. 从官网下载源文件
```shell
wget -O /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/all/
```
2. 在官方源文件中进行速度排序
```shell
cd /etc/pacman.d
cp mirrorlist mirrorlist.backup
rankmirrors -n 6 mirrorlist.backup > mirrorlist
```

## 手动更新源
```shell
sudo pacman-mirrors -i -c China -m rank
sudo vi /etc/pacman.cof

Color
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrosr.tuna.tsinghua.edu.cn/archlinuxcn/$arch

sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring base-dev

sudo pacman -S yay && yay --save --aururl "https://aur.tuna.tsinghua.edu.cn"
```

> CDN (ipv4, http, https)
> #### aliyun
> Server= http://mirrors.aliyun.com/archlinux/$arch
>
> #### 上海交通大学
> Server= https://mirrors.sjtug.sjtu.edu.cn/archlinux-cn/$arch
> #### 浙江大学 （浙江杭州） (ipv4, ipv6, http, https)
> #### Added: 2017-06-05[archlinuxcn]
> Server= https://mirrors.zju.edu.cn/archlinuxcn/$arch
>
> #### 中国科学技术大学 (ipv4, ipv6, http, https)[archlinuxcn]
> Server= https://mirrors.ustc.edu.cn/archlinuxcn/$arch
>
> #### 清华大学 (ipv4, ipv6, http, https)[archlinuxcn]
> Server= https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
>
> #### xTom (Hong Kong) (ipv4, ipv6, http, https)
> #### Added: 2017-09-18
> #### xTom Hong Kong Mirror[archlinuxcn]
> Server= https://mirror.xtom.com.hk/archlinuxcn/$arch
>
> #### Unique Studio （湖北武汉） (ipv4, http, https)
> #### Added: 2017-08-02[archlinuxcn]
> Server= https://mirrors.hustunique.com/archlinuxcn/$arch
>
> #### 上海科技大学 （上海） (ipv4, http, https)
> #### Added: 2016-04-07[archlinuxcn]
> Server= https://mirrors-wan.geekpie.org/archlinuxcn/$arch
>
> #### 中国科学院开源软件协会 （北京） (ipv4, http)
> #### Added: 2017-02-09[archlinuxcn]
> Server= http://mirrors.opencas.org/archlinuxcn/$arch
>
> #### 电子科技大学凝聚网络安全工作室 (ipv4, http)
> #### Added: 2016-05-28[archlinuxcn]
> Server= http://mirrors.cnssuestc.org/archlinuxcn/$arch
>
> #### 网易 (ipv4, http)[archlinuxcn]
> Server= http://mirrors.163.com/archlinux-cn/$arch
>
> #### 重庆大学 (ipv4, http)[archlinuxcn]
> Server= http://mirrors.cqu.edu.cn/archlinuxcn/$arch

```shell
sudo pacman -S fcitx-im fcitx-configtool

nvim /etc/environment
```

> * GTK_IM_MODULE=fcitx
> * QT_IM_MODULE=fcitx
> * XMODIFIERS="@im=fcitx"

## AUR`/etc/pacman.conf`
```shell
sudo yaourt package
```
