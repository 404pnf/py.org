# 最新我用来下载podcast的sed脚本

## 最新我用来下载podcast的sed脚本

1 blogline中找出好长时间没下的，存下html页面

2 cat *html > list

3 运行这个sed脚本

  ;http:;\nhttp:;g
  ;.mp3;.mp3\n;g
  /mp3/!d
  /http/!d

最后两行似乎不起作用。谁能帮忙一下。

运行该脚本 sed -f get-mp3-url.sed list >list1

4 去除重复的 uniq list1 >list-final； 或者用 sort -u ，这里的 -u 就是uniq 开关

5 wget -t 1 -w 5 -i list-final


feedburner无法访问，所以用feedburner做rss源的因为mp3文件也是feedburner的域名开头，所以都下载不了。我也不想研究wget加代理。只是让我觉得feedburner这种集中方式不好。但有些人喜欢是因为他们认为不管自己如何改变自己的站点甚至换域名，他们都可以保持在feedburner的订阅地址不变这样不会损失订阅人数量。

2008-03-18