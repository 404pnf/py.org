# 安装了emacs-snapshot还是在emacs中无法正确输入中文是因为你直接在bash中输入emacs实际还是调用emacs 21那个版本 输入emacs-snapshot就好了

## 安装了emacs-snapshot还是在emacs中无法正确输入中文是因为你直接在bash中输入emacs实际还是调用emacs 21那个版本，输入emacs-snapshot就好了。


如果你用的是ubuntu 7.10 gnu/linux，而且经常跟进升级，那么默认的eamcs版本就应该是22以上的。

中午花了1个多小时才弄好。家里一台机器运行ubuntu 6.06。emacs版本21，总是不能输入中文。但单位的机器上运行的ubuntu 7.10，emacs版本是22的，就可以。上午查阅了不是要资料都很麻烦。

但发现一个共识，emacs 21系列无法在gnome下正确处理中文是gnome的问题，不是emacs的问题。虽然也可能有默认字体的问题。ubuntu下eamcs22就不会有这个问题。

我理解，我装6.06的eamcs-snapshot，应该是22版本。那么这个问题就应该解决。通过新立得软件管理搜索emacs，选中eamcs-sanpshot，系统相应选了其他几个需要的包，一并安装了。

重新启动emacs。还是不行。在程序中选eamcs-snapshot-gtk也是不行。

切换窗口去fluxbox。反正家里机器慢，本来就是要用fluxbox做window manager。

在fluxbox中的bash输入emacs还是不行。

看到一篇文章，说一个人装了emacs23参考中文设置，一步步走都不行。最后发现，其实他系统中有两个版本的emacs。直接输入emacs是调用那个原来版本的，必须输入emacs-23.0.0才可以。

我联系我的情况，试验了一下输入 emacs- ，然后按tab补齐。出现了2个选项： eamcs-snapshot emacs-snapshot-gtk。随便用一个都可以处理中文了。什么修改配置都不需要。alt-x version 查看一下，是22版本。

没有在gnome桌面下试验，反正我只有fluxbox，能使用就好了。不研究那么多其它的为什么不行了。累。

解决了～！：） 差点就认为家里只能用vim了。：）虽然vim一样很棒。只是我不会用罢了。：）


2008-01-03