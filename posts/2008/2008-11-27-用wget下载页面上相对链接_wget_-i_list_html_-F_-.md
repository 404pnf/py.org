# 用wget下载页面上相对链接 wget -i list html -F -B http example com

wget -i list.html -F -B http://example.com

假设我要下载一个页面上链接到的文章。就用这个命令。

-i 跟文件名

-F force-html，强制认为读入的文件是html

-B base-url，会在读入文件中的相对路径前加入你跟的这个域名或域名加目录 比如该文件使用

         <a href="/2008/1.html">

这样的相对路径链接。不加-B和base-url，wget直接去下载这些链接都不会成功的。必须加上base-url，wget就知道它们其实是base-url/2008/1.html


2008-11-27