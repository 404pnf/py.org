# 是forkbomb forkbomb是逻辑炸弹 会搞垮你的机器

I learned it the hard way. :( hehe


刚才机器重新启动了。而且必须是到机器边上关机用圆珠笔捅来关机。因为愚蠢的我直接在生产系统上玩了个游戏。可惜啊，uptime又要重新开始算了。

不要在生产系统特别是你的网络服务器用这个。在你的桌面gnu/linux或苹果mac osx上可以试验。注意现保存所有为保存的文件。

> :(){ :|:& };:
> 
> The most elegant forkbomb code ever written.
> http://www.runme.org/project/+forkbombsh/

第一行看起来像不像笑脸什么的。其实不是。这个东西叫forkbomb。我没看懂之前就在我的server上玩了一把。之后感觉什么都没发生啊。然后才知道机器已经不受你控制了。机器无法接受任何指令了。

这行字实际上是以行命令。功能就是让你的机器瘫痪。这行是最简洁的forkbomb。

再次提醒自己。不要在自己的服务器上goofing around ;) 


> define: fork bomb - Google Search
> "    * The fork bomb is a form of denial of service attack against a computer system that uses the fork function. It relies on the assumption that the number of programs and processes which may be simultaneously executed on a computer has a limit. A fork bomb works by creating a large number of processes very quickly in order to saturate the available space in the list of processes kept by the computer's operating system. ...
>       en.wikipedia.org/wiki/Fork_bomb
> 
> "
> http://www.google.com/search?hl=en&newwindow=1&client=firefox-a&rls=org.mozilla:en-US:official&hs=sjV&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=define:+fork+bomb&spell=1

大家在自己的机器上玩玩看。最好是一个窗口运行着top，然后在另一个窗口发布那个forkbomb，看看top说什么。然后报告我一下。我就先不试验了。；）

2006-12-20