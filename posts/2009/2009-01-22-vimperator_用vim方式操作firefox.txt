# vimperator 用vim方式操作firefox

> vimperator:用vim方式操作firefox
> from 记录点滴 by liupingjing
> 用vim习惯了，浏览网页时总是按j键向下拉，结果郁闷的发现firefox不是vim，昨天在网上找了一个用vim方式操作firefox的插件：vimperator，装上去试了一下，貌似还不错，基础的键绑定和vim一致，简单的操作有： 支持j,k进行向下或向上滚动; 可以用C-U/C-D、C-F/C-B翻页; 支持gg,G,nG跳转到指定行; 用gt查看下一标签页,gT查看上一标签页，bN(N为一数字）查看第N个标签页; 用d或D关闭标签页; 用o www.example.com 在当前页打开网页，用t www.example.com在新标签页中打开网页; 按f/F，该页中所有链接都显示一个编号，输入相应的编号可以打开链接，f在当前页中打开，F在新标签页中打开；用u重新打开已关闭的标签，相当于快捷键Ctrl-Shift-T; 用r/R刷新当前页/所有页; 支持m(a-z)标记书签，然后用'(a-z)跳转到标签; 可以使用/进行搜索，n/N查看下/上一搜索项; 用C-o或H后退，用C-i或L前进; 支持:quit、ZZ、ZQ的方式退出; 支持新的快捷键绑定; 到现在为止发现的不顺手的地方有： 不能显示状态栏，好像前面的版本中可以使用:set go+=s来显示状态栏，但是1.2版本不支持了; 有几个快捷键不好用了，一个是粘贴Ctrl-P，一个是定位搜索Ctrl-K; 打开链接的方式稍显麻烦;
> http://liupingjing.blog.ubuntu.org.cn/?p=588

他的总结精炼～！详细！
看了他的总结，准备试验一下。：）

2009-01-22