# apache中对域名全局禁用etag之类的东西


etag不比last-modified强。且etag容易引入问题，如果你后台有多个服务器。我只有一台服务器，但也不想用etag。因为last-modified足够了。多一个etag，等于白白消耗web server处理能力。于是我决定在apache中全局禁用etag。

      <IfModule mod_expires.c>
        # Enable expirations.
        ExpiresActive On
        # Cache all files for 2 weeks after access (A).
        #  ExpiresDefault A360000000000
        # Do not cache dynamically generated pages.
        ExpiresByType text/html A1
      # 在这里我让本virtualhost中默认就不使用etag
      Header unset Pragma
      FileETag None
      Header unset ETag
      # 这里是我开始只针对某些文件unset掉etag
      # 现在可以不用了
      # 而且 header set Expires 也放在nginx中去实现了
     # http://httpd.apache.org/docs/2.0/mod/mod_headers.html#header
      <FilesMatch "\.(js|css|ico|pdf|flv|jpg|jpeg|png|gif|mp3|mp4)$">
      Header unset Pragma
      FileETag None
      Header unset ETag
      #Header set Cache-Control "public, no-transform"
      Header set Expires "Thu, 15 Apr 2013 20:00:00 GMT"
      # 只有这个 header unsset last-modified找不到nginx中对应的。高手指点？
      # 我找到答案了：）  http://forum.nginx.org/read.php?2,62782,62863
      Header unset Last-Modified
      Header append Cache-Control "public"
      </FilesMatch>
      </IfModule>

注：nginx中根本不支持设定etag。因为设定expire足够了。


2010-09-26