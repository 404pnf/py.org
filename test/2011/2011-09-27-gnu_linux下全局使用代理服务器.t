# gnu linux下全局使用代理服务器

以前用过一段时间的 Puppy Linux，给我的感觉是一个超便携的 Linux 系统，非常适合放在 U 盘上随时携带。
前两天朋友问我，在单位是通过代理服务器连接互联网的，Puppy 使用的 JWM 不像 Gnome 一样有专门的地方设置网络代理，难道只能在应用程序如 Pidgin、Seamonkey 中单独进行设置吗？岂不是很麻烦？
查了资料，原来可以在 /etc/profile.local 中设置系统变量：

export http_proxy=http://your.company.com:port
export https_proxy=http://your.company.com:por
来源： http://www.jinlei.info/?p=29

或者：

在 ~/.bash_profile 中添加

       http_proxy=192.168.0.1:4567321

查看是否生效。终端中运行
    export http_proxy
来源： http://forum.ubuntu.org.cn/viewtopic.php?t=61744
