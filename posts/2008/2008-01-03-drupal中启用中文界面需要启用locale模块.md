# drupal中启用中文界面需要启用locale模块

## drupal中启用中文界面需要启用locale模块

太久不装drupal了。稳定啊。一套代码支持多站点啊。所以根本不需要安装。
今天在本地装一个，完全忘了如何导入中文翻译了。
折腾了20分钟。原来得enable locale module。
真是耽误时间。
以后还是应该写一个自己常用的checklist。


还有我本地clean url也不行
奇怪。
不过这些都无所谓。本地主要是简单测试。
服务器端这些都不会出问题的。

这个问题解决了。原来是我本地没有启用apache的rewrite模块。
启用方法，我是ubuntu gnu/linux 就是基于debian

进入 /etc/apache2/

有两个目录和这个任务有关系

mods-available和mods0enabled

available是知你可以启用的模块。ls一下有rewrite。enabled是指你已经启用的模块。ls一下没有rewrite。那么你现在如果要启用这个rewrite模块的方法就是在mods-enabled目录下建立一个到mods-available的符号链接，也就是快捷方式。当然你直接复制rewrite.load到mods-enabled下面也可以。但那样不是不够cool么，而且如果你修改了这个模块，你还得注意两边文件都需要修改。如果只是一个快捷方式过去，你升级和修改都只用对mods-available中的文件进行。不用管那个符号链接，必经它只是个链接，本身没有内容。

      sudo ln -s ../mods-available/rewrite.load ./rewrite.load

我这是进入mods-enabled中发布的命令。


2008-01-03