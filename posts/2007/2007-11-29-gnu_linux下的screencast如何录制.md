# gnu linux下的screencast如何录制

gnu/linux下的screencast如何录制

https://wiki.ubuntu.com/ScreencastTeam/RecordingScreencasts
作者建议在系统中运行一个虚拟系统，然后录制那个虚拟系统下的操作。他给出了他的理由。

我不需要那么麻烦，只看一下他用什么工具和简单流程然后自己操练一下就好了。 

xvidcp来录制屏幕，只能录图像没有声音。audacity录制声音。avidemux把图像和声音，加上intro outro拼加在一起。ffmpeg2theora oggenc 2个工具转换视频和音频格式。

做着是先录像。然后看着录像配音录音。

如果我就两个录制同时开着，边录边说。

2007-11-29