# 在phpmymysql中限制只有从特定ip才能访问

在phpmymysql中限制只有从特定ip才能访问

我2年前搞明白了这点，再记录一下要不老忘。

## 首先提醒你，这不是什么好方法

从ip做限制没有通用性，而且安全性也不一定高。

## 第1步：把phpmysql的包放到/var/www中
我当时也是不知道通过apt装上如果通过web界面访问（现在我也不知道，谁知道告诉我）。所以采取了直接下载源码的方法。因为php写的，源代码压缩包解开放到apache能serve的目录就好了。

这里可以有个“假安全/pseudo security”的方法。别把那个目录叫phpmysql什么的。脚本孩子/script kiddie用自动脚本扫描都知道你那里是什么。起个其他名字，比如“乡村爱情”什么的。
## 第2步：编辑 config.inc.ph
我是没办法，当时不会其它的。现在也不会。而且那个环境是属于有个内网。虽然我管理的主机直接裸在主干网中（（就是没有防火墙。我觉得没什么，2年了，没出过事情，虽然我总是想加固一下），，但我有个192.166.x.x之类的地址。

我采用的是，在phpmysql目录中编辑2个文件。一个是 config.inc.php 什么的。里面选择

$cfg['Servers'][$i]['auth_type']     = 'config';    // Authentication method (config, http or cookie based)?
$cfg['Servers'][$i]['user']          = '管理员帐号';      // MySQL user
$cfg['Servers'][$i]['password']      = '管理员密码';          // MySQL password (only needed
                                                    // with 'config' auth_type)

主要就是这3项。等于在这个文件中就直接写了你的管理员帐号和密码（可以不是mysql的root，是它创建的用户，只要能管理你要管的数据库就好了），让后告诉用“config”的验证方式。验证方式的区别你查看phpmysql的文档吧，我当时看了选用这个。现在具体什么意思我也记不请了。：）



## 第3步：编辑 .htaccess

我的是这些内容

      Order deny,allow
      # 先禁止/deny,在允许/allow，就是先用禁止规则来过滤一下访问吧
      Deny from all
      # 禁止规则是禁止任何访问。先都禁止了，后面再给allow特例
      Allow from 192.166.1.21 192.166.1.22 192.166.1.23
      # 允许从一下ip地址来的访问，有多个ip，之间用空格分开就好
      .htaccess (END) 
      # 完毕了 都end了
      
## 这就是我现在的方法。我希望能学到更通用更安全的方法，支持远程访问管理的那种

就是一般web hosting提供的那种。


2008-07-16