# gnu linux下用file命令快速查看文件格式方面的准确信息非常方便

比如有一些视频，都是avi或者mp4结尾的。但具体有何区别，如何获取更多信息。

        $ file 一段视频.avi
	一段视频.avi: RIFF (little-endian) data, AVI, 640 x 480, 29.97 fps, video: XviD, audio: MPEG-1 Layer 3 (stereo, 44100 Hz)

视频格式重名但codec不同的格式太多了。真乱！！简单用file是无法知道确切信息的。

不过如果你有些文件没有后缀，用file很方便。它能自动辨认近百种文件格式。


2008-11-27