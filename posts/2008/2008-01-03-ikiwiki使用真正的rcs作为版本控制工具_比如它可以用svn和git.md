# ikiwiki使用真正的rcs作为版本控制工具 比如它可以用svn和git

## ikiwiki使用真正的rcs作为版本控制工具，比如它可以用svn和git

rcs是revision control system的意思。

> http://ikiwiki.info/features/
> Rather than implement its own system for storing page histories etc, ikiwiki uses a real Revision Control System. This isn't (just) because we're lazy, it's because a real RCS is a good thing to have, and there are advantages to using one that are not possible with a standard wiki.

这里说用真正的rcs不（单）是因为开发人员懒（意思是用现成的而不是自己写一个）。二十因为用真正的版本控制软件有很多标准wiki系统做不到的好处。

> Instead of editing pages in a stupid web form, you can use vim and commit changes via Subversion, git, or any of a number of other Revision Control Systems.

这里说用真正的rcs做backend的话，你不用在浏览器里面编辑页面了，那样傻傻的。现在你可以用vim来通过subversion或者git提交你的修改了。

这项功能，就是用强大的文字编辑器来处理文字是我要的！而且，与单纯使用svn和git相比，使用ikiwiki还总有一个web界面方便只是读内容或者习惯在浏览器直接修改页面的人。
 
> ikiwiki can be run from a post-commit hook to update your wiki immediately whenever you commit a change using the RCS.

这里说ikiwiki可以在你提交修改的RCS后立刻更新页面。


总的来说，这是个不错的工具。我特别看中它能使用Subversio和Git，这对于翻译书和大部头的东西很有作用。普通wiki用来写作翻译书，不好的地方，对于我来说就是1）在浏览器里面编辑很麻烦 2）从浏览器里面复制文本到emacs中修改人然后复制会去很麻烦 3）rcs提供的email你diff之类的方便功能没有 4）无法采用git这种分布式的版本控制系统。


不太喜欢用wiki因为一般wiki生成的url都不能是纯数字的，比如像drupal和wp那样/1 /33 /457 等，而是文章题目，比如 /feature /about_us /中文页面 。这是另一个话题了。有时间我 应该再好好想想。要不我很多网站都会用wiki建立了。方便。真是方便。

2008-01-03