# fwolf写的使用mencoder转换佳能数码相机录像文件的最佳参数

fwolf写的使用mencoder转换佳能数码相机录像文件的最佳参数
http://www.fwolf.com/blog/post/277

好文章啊。精华就是

      mencoder 要转换的文件.avi -o 导出文件的名字.avi -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=800 -oac mp3lame -srate 11025 -channels 1 -af-adv force=1 -lameopts preset=medium -mc 0


       mencoder 要转换的文件.avi -o 导出文件的名字.avi -ovc xvid -xvidencopts bitrate=800 -oac mp3lame -srate 11025 -lameopts preset=medium -mc 0 

尝试了半天用ffmpeg都报错。还是用fwolf这个一把过了。具体这些参数什么意思大家自己去man吧。

例子中的参数都可以调的。我感觉bitrate=800太模糊了。出来效果不好。我最后用了2000。还是不是特别好。但考虑文件大小问题。最后用3000了。源文件是mjpeg格式，都是640x480的图片连在一起。


2008-08-27