# 用firefox的插件download them all下载internet archive上的音频特殊方法

## 用firefox的插件download them all下载internet archive上的音频特殊方法

因为archive.org上很多音频，比如我要听得音乐专辑，都是多种格式。一种自由格式：.ogg，3种不同的mp3格式，一般是192kb/s，64kb/s和vbr。其中vbr是最清晰的。192和vbr在大多数情况下差不多64kb/s非常适合挂在网上用flash播放器听。

我有时下载一个专辑，直接用downloadthemall，然后勾选音频的时候，这4种格式的文件都会被选择，所以一首曲子等于下4种版本。而我不希望这样。我用手工选取了几次，太麻烦。于是我研究downloadthemall的快速过滤功能。就是最下面一行你可以输入过滤信息，支持曾泽表达式。

如果直接用mp3的话，
      /(.mp3)$/

还是有一个问题，3种压缩比的mp3文件结尾都是mp3，所以都会别下载。

我给个例子，每首曲子都基本有四个文件，命名方式如下

      http://www.archive.org/download/ambientcollective005/01.alone-in-the-dark-by-Na-Koja-Abad.mp3
      http://www.archive.org/download/ambientcollective005/01.alone-in-the-dark-by-Na-Koja-Abad.ogg
      http://www.archive.org/download/ambientcollective005/01.alone-in-the-dark-by-Na-Koja-Abad_64kb.mp
      http://www.archive.org/download/ambientcollective005/01.alone-in-the-dark-by-Na-Koja-Abad_vbr.mp3

我没想出如何只下载192k的，因为192k的文件结尾没有标志。所以我只的退而求其次，干脆我只下载vbr的吧。于是构建正则表达式

      /vbr(.mp3)$/

这样就只下载一个版本，就是vbr的mp3了。

我知道作为一个自由软件和自由文化倡导者和实践者我应该用ogg。但我身边的mp3还是不支持ogg格式的多。而且又是需要把喜欢听的赋值给其他朋友，他们也不一定有能放ogg的mp3播放器。


2008-04-21