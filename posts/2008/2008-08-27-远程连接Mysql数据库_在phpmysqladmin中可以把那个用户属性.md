# 远程连接Mysql数据库 在phpmysqladmin中可以把那个用户属性设置为从任意主机

远程连接Mysql数据库;在phpmysqladmin中可以把那个用户属性设置为从任意主机


phpmysqladmin中调整权限中可以设置一下用户属性

> 更改登录信息/复制用户
> 登入信息
> 用户名:
> 主机:
> 密码:
> 重新输入:   

其中主机名选择为任意主机。该用户就可以用非localhost登录了。

> 远程连接Mysql数据库
> 默认情况下是不能在远程连接Mysql数据库的，用Mysql－Front连接时会报权限错误。
> 
> 需要在Mysql的本地进行配置：
> # mysql -p
> Enter password: ******
> mysql> grant all on *.* to 'root'@'192.168.0.2' identified by 'password'
>         -> ;
> 执行之后就可以在192.168.0.2这台远程机器用root这个用户登录MySql了 
> http://www.cnblogs.com/firstyi/archive/2008/04/16/1155491.html


2008-08-27