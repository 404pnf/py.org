# gnu linux comment cheetsheet 中文翻译

## [gnu/linux comment cheetsheet 中文翻译](http://www.pixelbeat.org/cmdline_zh_CN.html)


其中值得我注意的

 	recode -l | less 	显示所有有效的字符集及其别名
  	recode windows-1252.. file_to_change.txt 	转换Windows下的ansi文件到当前的字符集(自动进行回车换行符的转换)
  	recode utf-8/CRLF.. file_to_change.txt 	转换Windows下的ansi文件到当前的字符集
  	recode iso-8859-15..utf8 file_to_change.txt 	转换Latin9（西欧）字符集文件到utf8

  	recode ..HTML < file.txt > file.html 	将文本文件转换成HTML
 	recode -lf windows-1252 | grep euro 	在字符表中查找欧元符号

 	echo -n 0x20AC | recode ucs-2/x2..utf-8/x 	显示utf-8编码


2007-12-28