# 我现在gnu linux下使用的命令别名 alias

## 创建用户的命令别名文件

在帐户home目录创建 .bash_aliases 文件（注意aliases是复数！），并comment out .bashrc中的一段话。

>  Alias definitions.
>  You may want to put all your additions into a separate file like
>  ~/.bash_aliases, instead of adding them here directly.
>  See /usr/share/doc/bash-doc/examples in the bash-doc package.
> 
> if [ -f ~/.bash_aliases ]; then
>     . ~/.bash_aliases
> fi

if和fi这三行本来是注释掉的，就是前面有井号，#
把#删除就可以了

以后有要新添加的命令别名，就直接加入到.bash_aliases这个文件就好了。

## 添加格式是
alias ls='ls --color=auto'
alias ssh129='ssh 404@129.0.0.44 -p908761'
alias sshpy='ssh jsmith@'
alias du='du -h'

## 在.bash_aliases文件加入新别名必须退出bash并再次登入才能生效

对一般人来说，新开一个terminal框就算重新登录了。

记得unix power tools这本书上给了在原terminal框输入某命令就能立即生效的。暂时忘了。

2009-01-05