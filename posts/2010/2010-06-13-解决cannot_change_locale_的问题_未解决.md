# 解决cannot change locale 的问题 未解决


最近电脑总出这个问题，在我按tab补全目录的时候
	$ less /etc/sysstbash: warning: setlocale: LC_CTYPE: cannot change locale (zh_CN.utf8) at/bash: warning: setlocale: LC_CTYPE: cannot change locale (zh_CN.utf8) sysstatbash: warning: setlocale: LC_CTYPE: cannot change locale (zh_CN.utf8) bash: warning: setlocale: LC_CTYPE: cannot change locale (zh_CN.utf8)
	sysstat         sysstat.ioconf  

由于有多个地方可以设定locale，我都忘了之前在哪里设定的。最后直接修改 ~/.profile 它的优先级最高??

      $locale -a

展示一下本机都安了什么locale，发现根本没有zh_CN.UTF8 倒是有hk和tw的。

      baixy@bai:~$ sudo vim .profile 

发现问题
      export LANG="en_US.utf8"
      # export LANGUAGE="en_US:zh:en"
因为locale -a出来跟恩没有什么 :zh，因此注释掉哪行

baixy@bai:~$ source .profile 
用source让profile立即生效。这样就不用退出当前登录况再开一个了

问题似乎解决了。现在我开个新bash terminal还是得先source .profile一下，否则按tab补全目录还是不行。看来有东西优先级更高。

更有意思的都是，我直接输入目录，如 /usr/ 然后按tab补齐，不报错。我输入 cd /usr/ 按tab补齐，必然报错，




2010-06-13