# 在ue中的一个宏操作 macro 提取含有 mp3的url并把这些行放在一起

在ue中的一个宏操作(macro)：提取含有.mp3的url并把这些行放在一起

目的：一个文件都是url，要求把url中含有.mp3的单独提出来访在一起

我问lvcha在ultraedit中如何完成。他没回答前我有了自己的答案。下面是我们的答案。

还有更好的么？

他的方法：

> 1 find .mp3
> 2 choose the line
> 3 copy the line to the file's beginning. use ctrl-home 
> 4 run some times. all the line end with mp3 will be the beginning of th file.
> 5 del th rest

我说明一下，回到文件的开始是先cltr-a然后按home。lvcha用ctrl-home更方便

我开始自己想的方法。现在发现lvcha得更简便

> i will try your method
> how do i go to beginning of file?
> cltr-a and presse home?
> 
> that's a nice one  :) 
> thank you
> 
> this is how i do it
> 1 find ..mp3
> 2 press home to the beginning of line
> 3 press zzzzz
> 4 press end go to end of line
> 5 repeat 1-4 one time
> 6 save macro
> 7 run the macro 10000 times
> 8 sort file so all lines begin with zzzz at the end of file, or sort file in reverse so they appear in beginning of file
> 9 replace zzzz with blank
> 
> your approach is much better
> thank you  ;) 

还有更好的么？

在nano或gedit中能实现么？
在emacs和vi中如何实现？
emacs录制macro是一样的
vi不懂也没用过

我想听听有无更好的方式
比如一样perl脚本解决 ：）
或者用ruby/python等。
lvcha也可以再想想

多说一句，这是我下在一些podcast用的，

1 到bloglines，察看一个rss的all times信息，
2 in firefox, right click -this frame - view source
3 copy source to a text file
4 in ue, replace http:// with ^phttp://
5 replace .mp3 with .mp3&p
6 sort file

^p in ue means new line


发现有些url是重复的。想删除重复的行。search remove duplicated lines。有ue的脚本，太麻烦。

找到了uniq这个bash命令

所以

uniq 1.txt > 2.txt 

就可以了 ：）


2007-03-26