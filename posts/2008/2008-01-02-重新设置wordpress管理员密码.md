# 重新设置wordpress管理员密码

## 遇到问题：

wordpress管理员密码丢失。无法登陆。管理员帐号还是知道的，是默认的admin。

## 解决方法：

search 'reset wordpress password'

先用中文 “重新设置wordpress管理员密码”搜索有用的文章，都是重设windows密码。所以写这篇文章。估计会有不少人需要看。

参考官方文档： [Resetting_Your_Password](http://codex.wordpress.org/Resetting_Your_Password)

我实际方法：

+ wordpress用户的密码在数据库中不是明文保存的，而是存储你密码的md5值。好处是，其他人无法直接看到你的密码。[1]
+ 所以你进入数据库修改你的密码，输入的新密码也必须是你密码的md5值
+ 在这里： http://epleweb.com/md5/ 得到你密码的md5值。 比如我的密码 kusestASt2yu3
  生成的值 Hashed string: 918fc2064e1f87bac21dc96857e2f9f0
+ 用phpmyadmin访问该wordpress的数据库
+ 浏览wp_users这个表
+ 编辑admin这个条目。
+ 把user_pass这个条目的值从以前那个长的一段数值改成新生成的这个
+ 登陆的时候输入密码还是用kusestASt2yu3。用这个密码登陆。成功。


[1] 如果它暴力破解密码，会比较慢，如果他用time and storage tradeoff，非常快，不过需要很大硬盘空间和下载已经穷尽算好了各字符串md5值的库。这不是本话题讨论的。有兴趣的自己去研究。还有rainbow table这个关键词。

2008-01-02