# 用lame给mp3批量加id3tag信息

用lame给mp3批量加id3tag信息

我一直在找类似工具。未果。

今天读lame的mannual发现了怎么弄。其实lame的手册我以前就读过多次甚至基本翻译完了。但没[注意这段关于id3的](http://lame.cvs.sourceforge.net/*checkout*/lame/lame/doc/html/id3.html)：

> ID3 comments switches  	parameters
> --tt "title" 	title of song
> --ta "artist" 	artist who did the song
> --tl "album" 	album where it came from
> --ty "year" 	year in which the song/album was made
> --tc "comment" 	additional info
> --tn "track" 	track number of the song on the CD (1 to 255, creates an ID3 v 1.1 tag)
> --tg "genre" 	genre of song (name or number)

rtfm rtfm~!!

再次教育我要[rtfm]

我应该重新开始把lame的mannual翻译一下了。有人响应么？

很高兴。：）因为现在只用一个自由软件lame就能完成批量压mp3和打标的工作了。

当然这个是命令行模式。图像界面的或lame的frontend我没找类似的。不过我的问题解决了。

大家一起找图像界面的给喜欢用图形界面的人用就好了。 也可以写一个frontend嘛：）

--tg
101 - Speech

2007-04-03