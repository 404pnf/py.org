# lyceum中让新建blog的默认永久链接是 post id 形式

lyceum中让新建blog的默认永久链接是 /%post_id%/ 形式

编辑lyceum配置文件
修改相应的行就好了。

//you probably want to leave these as they are
define('DEFAULT_PS', '/%post_id%/');
define('DEFAULT_TEMPLATE', 'default');
define('DEFAULT_STYLESHEET', 'default');

这是我已经修改好的了
如果你有一个模板希望新创建用户默认使用，修改后两行就好了

还没试过是否正常工作。应该没问题。等有人创建了新blog再说。



2008-06-11