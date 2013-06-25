# 用ffmpeg把mpeg2解码成kino能够编辑的dv文件格式

我最近需要编辑一些以前已经压成dvd格式的mpg文件。我只会用<a href="http://www.kinodv.org/">kino</a>编辑。所以需要先把mpg解码成dv文件。但dv文件有很多种类。kino认那个我不知道。

用 ffmpeg -formats |less 查看可以选择的格式。发现了dv1394，就是它。

<blockquote>  ffmpeg -i test-dvd.mpg -target dv1394 test-dv.dv</blockquote>



2007-05-22