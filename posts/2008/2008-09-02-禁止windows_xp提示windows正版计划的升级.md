# 禁止windows xp提示windows正版计划的升级

禁止windows xp提示windows正版计划的升级

微软让使用非授权拷贝的windows xp的人屏幕黑屏，启在促使他们购买授权的拷贝。我一同事机器就出现这个问题，黑屏幕，昨晚给我打电话。我说不知道。今天问他说解决了。解决方法是有人给他替换了个什么系统文件。

> Black Screens For Unauthorized Copies of Windows 
> http://tech.slashdot.org/article.pl?sid=08/08/28/2138201&from=rss
> arcticstoat writes "In a bid to deter people from using pirate versions of Windows XP, Microsoft is now updating its Windows Genuine Advantage (WGA) tool to introduce a few uncomfortable niggles for users of pirated versions of Windows. These include replacing the desktop wallpaper with a black screen every 60 minutes, although you can still replace it with your wallpaper of choice in the intervening period. As well as this, copies of Windows deemed to not be genuine will also have a translucent watermark above the system tray, which Microsoft calls a 'persistent desktop notification.'"  

如果你的windows老让你安装正版windows计划的升级，不要安装！

你也可以用下面的方法永远禁止它再次询问你。

> Re:Notifications (Score:4, Informative)
> by Shaper of Myths (148485) on Thursday August 28, @07:55PM (#24787417)
> 
> This is actually pretty easy to defeat. Just boot into safe mode (XP Home) or regular mode (XP Pro or Media Center). Find the files in C:\WINDOWS\SYSTEM32 called 'wgalogon.dll' and 'wgatray.exe'. Bring up the file properties, go to the security tab and remove the inherited permissions from the files (don't copy them, strip them completely). Answer yes when it asks if you're sure about this. Reboot and WGA will never bother you again. I've done this on dozens of machines and it just skips the update because its too stupid to fix permissions. The only exception to this is the Service Packs or repair installs. YMMV
> 
> Of course nobody should have to do it in the first place but this is an example of corporate-think at it's best from our fiends in Redmond. If XP is so dead why should they be developing new WGA tricks for it anyways? Sounds to me like its them getting a bit nervous about how many people are jumping ship from Vista and pointing at 'hackers' as the problem. Again. =)
> 
> http://tech.slashdot.org/comments.pl?sid=947253&cid=24787417

方法是到C:\WINDOWS\SYSTEM32文件夹中找到'wgalogon.dll'和'wgatray.exe'文件。选中后点击右键看文件属性，到安全面去掉所有的继承权限。程序问你是否确定，选是。重启。以后就不会问了。评论有几个人都说这个方法有用。我描述的方法是否正确我不知道，因为我手头没有windows。早不用了。我一会儿在其他人机器上看看。


2008-09-02