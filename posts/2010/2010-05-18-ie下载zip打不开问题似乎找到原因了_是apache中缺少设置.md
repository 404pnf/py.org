# ie下载zip打不开问题似乎找到原因了 是apache中缺少设置

       # 404
       # 需要加入addencoding zip .zip 否则在送出zip文件的时候，apache认为是html，因此可能会再次 gzip压缩它并传输
       # 这样ie客户端下载zip后就打不开了。firefox/chrome等下载同样zip不出现问题
       # 参考： http://www.fredshack.com/docs/apache.html
       # http://httpd.apache.org/docs/2.0/mod/mod_mime.html
       #If a file is encoded (eg. ZIP file, BinHex file, etc.), use the
      Encoding directive so that Apache will se nd a Content-Encoding
      der:
       AddEncoding zip .zip
       #... will result in the following header:
       #Content-Encoding: zip

2010-05-18