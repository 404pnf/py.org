# ubuntu gnu linux 中 alt 被帮定为scim输入法切换了 同时说说如何在scim中禁用ctrl空格调出输入发

ubuntu gnu/linux 中 alt+` 被帮定为scim输入法切换了？同时说说如何在scim中禁用ctrl空格调出输入发

## ”alt `“也是调出scim输入法的默认快捷键
本来想实验一下在终端中用emacs用 alt + `来访问菜单。不想调出中文输入发。

终端中用的emacs就是emacs-snaopshot-nox，就是最后有nox，nox是no x的意思，就是no x-window，就是没有x窗口。

这样也有好处，我禁止ctrl + space调出输入发，这样就可以用ctrl + space 来mark了。emacs中默认的mark就是ctrl + space，但我用过的所有系统都用这个快捷键来切换输入法了，所以我一直用ctrl + @，按的时候实际是按下ctrl和shfit按数字键2，相当麻烦。

## 禁止用ctrl+空格调出scim输入法
方法：
1. 在system　> 首选项　> scim输入法设置。　
2. 进入Frontend > Global Setup　面板
3. 点Hotkey栏的Trigger一项。
4. 你会看到默认selected　keys里面有ctrl + space，Alt - grave等多个热键。选中ctrl-space，点delete就删除了。
5. 保存修改。
6. 修改保存后不能马上生效，需要重新启动scim。如何重启该程序我不知道。我采用的方法是退出当前登录，再重新登录回来。

## 如果你想帮定其它快捷键到调出scim输入法
还是在刚才地4步，你点Key Code栏最右边的按钮，出来一个提示窗口，上面英文意思是，你现在就直接按你要的快捷键，按完了该窗口自动关闭。比如你尝试一个，按下shift-空格。那个提示窗口果然没了，你会看到Key Code栏中现在是“space”，下面的Modifiers的勾在shift上，证明它正确地接收了你的输入。这是点下面的Add，上面Selcted Keys就多了一项Shift+space。

注意：如果你想设定的快捷键用到了alt，**按键盘右边的alt**，按左边的alt系统认为你要操作窗口。

## 为了怕别人用我的机器不知道如何调出输入法，我把shift-空格也定义为调出scim了

2008-07-03