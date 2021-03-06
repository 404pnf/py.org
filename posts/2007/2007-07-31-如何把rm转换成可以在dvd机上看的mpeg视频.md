# 如何把rm转换成可以在dvd机上看的mpeg视频

如何把rm转换成可以在dvd机上看的mpeg视频？

## 批量使用下面的命令

都是用bash的 for, do, done。

比如 
          for f in *.rm; do mencoder $f -oac mp3lame -lameopts preset=128 -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1200 -ofps 25 -of avi -o $f-mp4.avi;done 

就好了。这是一个循环。先找到特定文件f，这里是*.rm的都是f。然后循环do那个命令。把我下面的命令中文件名的部分都用文件名参数$f来代替就好。

## 把rm转成mpeg4

       mencoder 01.rm -oac mp3lame -lameopts preset=128 -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1200 -ofps 25 -of avi -o out.avi

这都可以自己调整。比如让画面达到vcd水平就好了，就把bitrate=500k差不多。

这样转出来的号称能播放mp4的dvd机器不能播放！为什么？

下面是该类型视频具体信息

<pre>
idvid
Video identification script
Part of the tovid suite, version 0.30
http://www.tovid.org
--------------------------------
Analyzing file: '01-mp4.avi'. This may take several minutes...
=========================================================
               File: 01-mp4.avi
              Width: 512 pixels
             Height: 384 pixels
       Aspect ratio: 1.33:1
             Frames: 0
           Duration: 00:36:49 hours/mins/secs
          Framerate: 25.000 frames per second
       Video format: FMP4
      Video bitrate: 1201704 bits per second
---------------------------
Audio track 1 (Stream 0.1, AID 0):
---------------------------
              Codec: mp3
            Bitrate: 128000 bits per second
      Sampling rate: 44100 Hz
=========================================================
Audio is compliant with the following formats:
  Not compliant with (S)VCD or DVD
Video is compliant with the following formats:
  Not compliant with (S)VCD or DVD
This video does not seem to be compliant with (S)VCD or DVD
standards. If you burn it to a video disc, it may not work.
=========================================================
</pre>

## 要想在我的dvd上看还需要再转一下

用   ffmpeg -i $f -ab 56 -ar 22050 -b 500 -s 320x240 $f.mpg

这样40分钟一集，每集不到200mb。效果也就vcd。需要更好效果自己改参数。-ab指audio bitrate，。-ar指audio reample，-b 是视频的比特率 -s 是线数，看你家电视和片源状况。我用的这个是很小的，电视上看也有些模糊的。为了省空间。而且我这个脚本是把youtube上下载的录像转好在电视看的，所以哦了这些参数。在这里顺手拿来用了，也没再调整。

看一下这类视频的具体信息

<pre>
idvid
Video identification script
Part of the tovid suite, version 0.30
http://www.tovid.org
--------------------------------
Analyzing file: '01-mp1.mpg'. This may take several minutes...
=========================================================
               File: 01-mp1.mpg
              Width: 320 pixels
             Height: 240 pixels
       Aspect ratio: 1.33:1
             Frames: 0
           Duration: 00:36:49 hours/mins/secs
          Framerate: 25.000 frames per second
       Video format: MPEG1
      Video bitrate: 0 bits per second
---------------------------
Audio track 1 (Stream 0.1, AID 448):
---------------------------
              Codec: mp2
            Bitrate: 56000 bits per second
      Sampling rate: 22050 Hz
=========================================================
Audio is compliant with the following formats:
  Not compliant with (S)VCD or DVD
Video is compliant with the following formats:
  Not compliant with (S)VCD or DVD
This video does not seem to be compliant with (S)VCD or DVD
standards. If you burn it to a video disc, it may not work.
=========================================================
</pre>

## 区别

第一个是fmp4的video format，第二个，也就是能在播放mp4的dvd机上看的怎么显示是mpeg1的格式啊。


## 请懂的人说说怎么回事；并说说你们的方法。

## 其他和本主题没太多关系但是我在搜索是发现的觉得以后应该有用的links：

http://diveintomark.org/archives/2007/06/07/howto-batch-encode-video-for-ipod-under-linux-2007-edition

http://gpac.sourceforge.net/packager.php
can manipulate gp3 and stuff

http://www.debian-multimedia.org/





2007-07-31