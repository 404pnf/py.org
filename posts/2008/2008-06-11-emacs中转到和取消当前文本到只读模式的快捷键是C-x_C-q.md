# emacs中转到和取消当前文本到只读模式的快捷键是C-x C-q

emacs中转到和取消当前文本到只读模式的快捷键是C-x C-q

我以前老用 M-x toggle-read-only 很方便记忆。toggle就相当于开关嘛。在两种模式交替。goggle做交替讲不错。：）

今天才看到了提示的快捷键。那就更方便了。

在只读模式的时候，命令输入行上面的那个框的左边会出现个百分号 %  取消只读就没有了。这个细节不重要。在只读模式里你不能修改，按空格没有，这是最简单的判定方法。

注意到一个细节，出现的百分号有时是两个有时一个。似乎规律是：如果当前文件没有未保存的信息，切换到只读模式就出两个%，如果有未保存信息，切换到readonly就是一个%.

2008-06-11