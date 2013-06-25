# 问 ubuntu gnu linux 7 10 启动后程序菜单不出来了

## 问：ubuntu gnu/linux 7.10 启动后程序菜单不出来了

问：ubuntu gnu/linux 7.10 启动后程序菜单不出来了。怎么回事？

连关机重启那个工具条都没有。我用ctrl-alt-del，选择用其他用户登录，尝试用gnmoe和fluxbox登录都不行，还是进入xfce的桌面。

进入桌面才发现，连启动一个terminal都不知道如何启动。用xfce的文件管理器，随便点桌面一个文件夹就能打开那个文件管理器，进入/bin中点bash也不行。搜索 term* 也没有程序包含这个名称。

进入 /usr/bin 找到emacs22，双击启动，写下这段文字。

现在准备在emacs中启动shell然后重新关机。也许关机前应该现apt一下。

## 结果

现在还不知道。我现在去试验一下。

在emacs中运行shell，先 sudo apt-get update 再 sudo apt-get upgrade，系统说已经最新了，不用更心。之后 sudo reboot。

重启后先进入fluxbox，这回提示我是就本次进入fluxbox还是以后将它做为默认呢？有戏。我说就这一次吧。现在进来了。fluxbox桌面。很好。

我再退出进入xfce和gnome看看情况。

稍等～：）

## fwolf也遇到类似，但不完全一样的问题并给了他的解决方案

http://www.fwolf.com/blog/post/374


2007-12-27