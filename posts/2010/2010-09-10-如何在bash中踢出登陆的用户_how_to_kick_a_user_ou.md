# 如何在bash中踢出登陆的用户 how to kick a user out in bash

我通过搜索 linux kick pts user out 找到答案
>      who -u 
>
>this will list users logged on system including their process id(pid) on colume 7
>then issue 
>
>       kill -9 (pid)
> http://www.unix.com/unix-dummies-questions-answers/6538-kicking-users-off.html

2010-09-10