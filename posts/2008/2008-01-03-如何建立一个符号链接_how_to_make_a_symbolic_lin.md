# 如何建立一个符号链接 how to make a symbolic link 如何在ubuntu或者debian gnu linux中启动apache的rewrite模块

## 如何建立一个符号链接；how to make a symbolic link；如何在ubuntu或者debian gnu/linux中启动apache的rewrite模块。

搜索了一下[这个主题](http://www.google.com/search?ie=UTF-8&oe=UTF-8&q=make+symbolic+link+how+to)

这些基本只是根本就应该牢记！！！

我真是不刻苦啊。

简单说：

     ln -s source linkname

http://unixhelp.ed.ac.uk/tasks/links2.2.html
http://help.hardhathosting.com/question.php/95

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


2008-01-03