# 如何用vim直接发文章到drupal上



喜欢简短的直接看英文愿望呢。画面很有说服力：） 
http://reluctanthacker.rollett.org/software/drupavim
http://reluctanthacker.rollett.org/software/drupavim
![](http://reluctanthacker.rollett.org/sites/default/files/Picture%2020.png)

我的做法：

1、看作者网站
2、下载vim插件放到 ~/.vim/plgin/ 下
3、看一下那个插件的INSTALL
4、编辑drupalvim.vim中用户密码和你站点域名 
5、打开vim
6、输入 :source ~/.vim/plugin/druaplvim/druaplvim.vim  因为真的还不知道如何自动load pluing到vim
7、 :e blog/suibian 只要 :e blog/ 就是说我要写blog，也可以用 story或者其它contenttype。 blog/后面的文字随便写，只要不是之前有过的node id就可以，否则插件一位你要编辑以前文件呢
8、写好了 :w 就发表了 ：） 
9、如果你想用 free tagging 参考 INSTALL

To install DrupaVim, Copy drupavim.vim to ~/.vim/plugin and edit 
your username, password and blog url.

Optionally copy drupavim.txt to ~/.vim/doc and run :helptags ~/.vim/doc

If you wish to use the freetagging capability, set useinlinetags = True
and install the inline tags module, which you may find here:

http://drupal.org/project/inlinetags

As of drupal-6.9, for file/image uploads to work, you must patch drupal 
with the patch found here:

http://drupal.org/node/243907
INSTALL (END) 



2010-03-12