# 用nohup命令在从shell登出的情况下仍能保持程序运行

用nohup命令在从shell登出的情况下仍能保持程序运行

## nohup + 命令
> There is a command called nohup built into both the GNU toolset, and most shells, which allows you to run a command in this way. It is so called because the command being run is executed ignoring ‘hang up’ signals, which are given when you close the terminal you started the program from.
> 
> To use this, simply prefix your command with nohup, for example:
> 
> nohup wget bigfile
> 
> This will still run in the foreground, however, meaning that you will lose the ability to use that terminal while the command is executing. In most cases, you’ll want to use the ampersand (&) to run the command in the background.
> 
> nohup wget bigfile &
> 
> Now you can log off your remote machine, or close your terminal and the command will continue running in the background.
> 
> The output and errors from the command you run with nohup are stored in a file called nohup.out in the directory where you started the command, or your home directory if for some reason that’s not possible (e.g. permissions).
> 
> http://fosswire.com/2008/07/08/nohup-run-a-command-even-once-your-shell-is-closed/

如果你有一台机器是从不关机的，（wink wink：比如你管理的服务器：），那么这命令对你有用。

就像例子中说得那样，你要下载或者上传很大的文件，或者要做一些其它非常耗时间的事情。如果没有这个命令，因为你是远程登录到你服务器上，通常通过ssh。你登录上发布命令，如果该命令没有执行完而你登出了，该命令就没有完全执行成功。那么下载就中断了，或者计算停止了，下次还得重新来。

有了这个命令，上服务器加上它发布个需要很长时间才能执行完的命令，然后你就可以登出，关闭桌面电脑，回家了。

## screen当让也可以完成同样人物而且更出色
OK OK，当然啦，screen就可以完成同样任务，而且功能更多。我明白。但对于只想用最简单地方法来解决这类问题，nohup还是很有价值的。

> $ screen
> 
> You’ll get a brief copyright notice and such, just press Space as directed. You are now running Screen (although it won’t look any different to a normal terminal session by default).
> 
> Now, feel free to go off and start that important task. Once it’s up and running, press Ctrl+A, then Ctrl+D. Screen sends you back to your shell and you can now disconnect.
> 
> Later, when you want to come back, run:
> 
> $ screen -r
> 
> Your old session is restored! Anything you started should still be running.
> 
> Screen is a lot more powerful than just offering this feature, however, but we’ll save the rest for another day.
> 
> Finally, when you are actually done with a Screen session for good, quit it by pressing Ctrl+A, then Ctrl+\ or you can simply type exit into the terminal as normal.
> 
> http://feeds.feedburner.com/~r/fosswire/~3/331916948/



2008-07-17