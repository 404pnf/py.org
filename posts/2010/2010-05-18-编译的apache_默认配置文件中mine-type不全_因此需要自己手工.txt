# 编译的apache 默认配置文件中mine-type不全 因此需要自己手工加一些 否则会出现ie6这种浏览器显示不了swf的情况


      AddType application/x-compress .Z
      AddType application/x-gzip .gz .tgz
      AddType application/x-httpd-php .php
      Addtype application/x-httpd-php-source .phps
      # 404 需要加入 swf这个mine-type，不然也会被apache作为默认的text/html处理，有些ie6无法正常显示
      # 参考： http://www.htaccess-guide.com/index.php?a=11
      AddType application/x-shockwave-flash .swf
      AddType text/html .html .htm
      AddType text/plain .txt
      AddType application/octet-stream .bin .exe
      AddType application/pdf .pdf
      AddType application/rtf .rtf
      AddType application/zip .zip
      AddType application/x-latex .latex
      AddType application/x-tcl .tcl
      AddType application/x-tex .tex
      AddType application/x-texinfo .texinfo .texi
      AddType application/x-troff .t .tr .roff
      AddType application/x-troff-man .man
      AddType application/x-tar .tar
      AddType image/jpeg .jpeg .jpg .jpe .JPG
      AddType image/tiff .tiff .tif
      AddType audio/x-wav .wav
      AddType audio/x-pn-realaudio .ram
      AddType audio/x-midi .mid
      AddType video/mpeg .mpeg .mpg .mpe
      AddType video/quicktime .qt .mov
      AddType video/x-msvideo .avi



2010-05-18