# openoffie的writer中的正则表达式

openoffie的writer中的正则表达式

因为单位强迫用word格式题，于是我只能在eamacs和vim中写好了，粘贴到openoffice的writer中，再做几个格式处理，比如加黑体字和给某些关键词上色等。这些颜色和字号等，对于重复使用文本是定时炸弹。不过，我不是decision-maker，挣点面包钱罢了。如果是我的企业，我不会这么傻，用word之类来存储文本库。
<http://wiki.services.openoffice.org/wiki/Documentation/How_Tos/Regular_Expressions_in_Writer>

writer对正则支持不错。

使用时，还是普通查找，但需要点一下“更多选项”并勾选“正则表达式”才能使用正则表达式。

其实我要做的有一件是就是删除所有多余空行。

可惜 \n\n 总是不成功。 \n应该是newline的意思。看来writer不认为我文章中是newline。

最后用 替换 ^$ 也就是匹配完全空的行。还好，我的空行都是完全空的行，没有说那种看着是空的，实际有个空格或者tab之类。


2009-01-19