# ffmpeg可以直接把 dat结尾的vcd文件转换成其它格式 tovid更是可以直接把dvd的vob文件给转换成mpg

## ffmpeg可以直接把.dat结尾的vcd文件转换成其它格式
ffmpeg -i /temp/MPEGAV/AVSEQ01.DAT -target pal-vcd 2.mpg

我是要重新编辑一下这些文件，所以我转换成dv1394，而且我会批量，所以我用

for f in /media/cdrom1/vcd/*.dat;do ffmpeg -i $f -target dv1394 $f-dv1394

## tovid更是可以直接把dvd的vob文件给转换成mpg

我还是用批量转

for f in /cdrom/*.vob; do tovid -pal -dvd -in $f -out $f-dvd; done

ffmpeg支持很多格式，可以用 ffmpeg -formats 来查看
想快速定位你要找的，比如我想看看dv都有什么表示，用 ffmpeg -formats ｜grep dv 就好了

## 对了，问问题：  ffmpeg -i file.mpg -target mp3 file.mp 告诉我不支持mp3这个格式呢。明明支持啊。




2007-07-27