# 学会了bash中的循环 for do

真高兴。以前很麻烦的东西现在可以简化了

比如，我压缩mp3，现在可以

      for f in./*.mp3;do lame -b64 --reample 44 $f;done

这里的 第一个f应该代表文件。 后面的$f也代表文件。反正我是照葫芦画瓢使用的。

比以前那个[使用xargs](http://pengyou.rijiben.org/node/1369)要方便。xargs的用法我还是不会。那个是freebsd社区的LI xin告诉我我直接用的

那么一些修改文件名和用ffmpeg批量处理文件也应该可以的。今天没时间试验了。希望可以。

很高兴。

我是参考[howto geek的一篇文章](http://www.howtogeek.com/howto/ubuntu/unzip-or-unrar-many-files-at-once-in-linux/)。

2007-06-12