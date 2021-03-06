# mp3split 分割ogg和mp3文件的工具

## mp3split：分割ogg和mp3文件的工具

主页 http://mp3splt.sourceforge.net/

> Mp3Splt-project is a utility to split mp3 and ogg files selecting a begin and an end time position, without decoding. It's very useful to split large mp3/ogg to make smaller files or to split entire albums to obtain original tracks. If you want to split an album, you can select split points and filenames manually or you can get them automatically from CDDB (internet or a local file) or from .cue files. Supports also automatic silence split, that can be used also to adjust cddb/cue splitpoints. You can extract tracks from Mp3Wrap or AlbumWrap files in few seconds. Mp3splt-project is split in 3 parts : libmp3splt, mp3splt and mp3splt-gtk.
> See the about section for more details.
> 
> OS : GNU Linux, *BSD, MacOS X, BeOS, Windows
> Environment : Console (Text Based), Graphic GTK2
> License : GNU General Public License

最近听有些有声书的mp3是那种一个文件很大，上百mb，一个文件5-6个小时。这种不适合在mp3随身听中播放，因为难免听到一半想听其它的。我的iriver又没有书签功能，好像iaudio有的产品可以。这样，我就需要把大块头的mp3分割成小的，比如每1个小时一段。我就想起这个工具了。以前在gnu/linux下用过，命令行下用的。今天用了下windows下的版本。

它有不少参数。还有自动找到音频中空白切割的。这对于一个大文件里面是一整张专辑歌曲的mp3很有用，等于自动把每首歌单独摘出来了。

具体使用方法看随软件包带的man.html。

我举个例子，因为我是切有声书的文件

我用下面命令：

      
       mp3splt.exe -t 60.00 "Alan Greenspan The Age of Turbulence (Unabridged) PART_01.mp3"

这是在windows下，而且mp3splt.exe和你要切割的文件在同一目录情况下。这很好办。因为该exe文件很小，你把它复制到你要切割的那个大mp3文件下就好了。

-t 这个开关告诉程序后面跟着时间。时间个是是 分钟.秒。分钟和秒都是2位数。 之后我直接跟文件名了。文件名很长不用输入，在cmd中用cmd /f:on打开自动补齐。这样你输入Al然后按ctrl-f就自动补齐了。

输入这段命令后，它就把那个大文件分为每60分钟一段了。


> -t TIME
>     Time mode. This option will create an indefinite number of smaller files with a fixed time length specified by TIME (which has the same format described above). It is useful to split long files into smaller (for example with the time length of a CD). Adjust option (-a) can be used to adjust splitpoints with silence detection.

下面也是2个常用的开关

> -s
>     Silence mode. To split with silence detection. When you use -s option, mp3splt attempts to detect silence points in all the file (or just in some parts, see -a and -c below for this). To detect silence we need to decode files, so this option can be really slow if used with big files. It accepts some parameters with -p option (see below for a detailed description): threshold level (th) which is the sound level to be considered silence, number of tracks (nt) which is the desired number of tracks, cutpoint offset (off) which is the offset of cutpoint in silence, minimum length (min) which is the minimum silence length in seconds, remove silence (rm) which allows you to remove the silence between splitted tracks. If you don't specify any parameter, mp3splt will use the default values. Of course if you specify the number of tracks to split, you will help mp3splt to understand which are the most probable split points, anyway once you scan a file with -s option, mp3splt will write a file named "mp3splt.log" in which it saves all silence points found. This allows you to run mp3splt with different parameters (except th and min) without need of decoding file again. Finally, if the number of silence points is not correct, you have many chances to achieve right result. For example if a silence point was not detected because too short, you can manually split the long track in the two smaller ones. Or if file is an MP3 (not with ogg) and there are too many silence points that can't be discarded reducing track number (because are longer than right points) you can safely concatenate them with 'cat' programs or similar ('copy /b file1+file2' for dos) because splitted files are consecutive, no data is lost and no ID3 is written for this purpose. This option is intended to split small/medium size (but even large if you can wait ;) mp3 and ogg files where tracks are separated by a reasonable silence time. To try to split mixed albums or files with consecutive tracks (such as live performances) might be only a waste of time.
> 
> -c SOURCE
>     CDDB mode. To get splitpoints and filenames automatically from SOURCE, that is the name of a ".cue" file (note that it must end with ".cue", otherwise it will be wrongly interpreted as a cddb file) or a local .XMCD (.CDDB) file on your hard disk. If you want to get informations from Internet, just type "query" instead of filename. mp3splt will connect to server, will ask you some keywords and will start to find the requested informations. If you will find the right album, then mp3splt will finally query the server to get the selected album and, if all is correct, will write a file named "query.cddb" from which will get splitpoints and filenames. ID3v1 will be created automatically with taken informations. The first time you run mp3splt with "query" option, it will ask you if you use a proxy, just fill out informations.

正好我手头也有几个cue文件不知道怎么弄呢。这个工具也可以整。下次试验一下。

自由软件就是好。

关于我切的那本有声书，请参考[这篇文章]()。



2008-04-25