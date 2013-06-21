# 在ubuntu gnu linux下编辑 etc default timidity 来打开alsa 这样audacity等就能录音了

在ubuntu gnu/linux下编辑 /etc/default/timidity 来打开alsa。这样audacity等就能录音了。

我偶然按 alt-ctrl-f8 等如那个terminal看见一行字

> enable alsa sequencer first by editing /etc/default/timidity

默认是不启动。改成启动。然后等出桌面再登入（需要这样么）就可以了。

以前没有开启的时候，audacity无法录音。现在好了 ：）

2007-10-16