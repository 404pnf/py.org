# 用ffmpeg转wma到mp3

我讨厌wma。但有时候要的东西是wma的，需要转一下。

用ffmpeg转wma到mp3

> Converting WMA to MP3 Using FFmpeg
>      ffmpeg -i input.wma -ab 32 output.mp3
> http://www.db75.com/new_blog/?p=349

上面的命令读出来就是把input.wma文件转换成平均比特率(ab=average bitrate)为32k的文件名为output.mp3的mp3文件。

当然，你也可以指定采样率（sampling rate），使用ar，应该是average rate之类的。

    ffmpeg -i input.wma -ab 64 -ar 22050 output.mp3
命令读出来就是用ffmpeg将input.wma文件转换成平均比特率为64kb每秒，采样率为22050hz的mp3文件。

如果你转mp3是为了让网上的flash播放器播放，那么-ar请设置为11khz的倍数，比如 11025 22050 44100 ，就是我们常说的多少千赫，前几个分别是11khz 22khz 44khz。

虽然我实验了11025但报错说
    
      [mp2 @ 0xb7e42508]Sampling rate 11025 is not allowed in mp2

奇怪？谁明白说说。


2007-11-01