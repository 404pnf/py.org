# nginx直接缓存和送出drupal站点的内容 不需要boost 推荐nignx header module这个模块



我使用了。成功了 ：） 

> However, if you really want to use nginx caching you'll want to:
> 
> 1. replace Drupal with Pressflow and set Drupal caching to 'external',
> 
> 2. install my little header module, http://www.brianmercer.com/nginx-header-module for sending the 'X-Accel-Expires: 0' header so logged in pages aren't cached, and
> 
> 3. use a configuration more like this:
> 
> 
>          location ~* .+.(ico|jpg|gif|jpeg|css|js|flv|png|swf)$ {
>            expires max;
>           }
> 
>           location / {
>            proxy_pass       http://apache;
>            proxy_set_header  X-Real-IP  $remote_addr;
>            proxy_set_header Host $http_host;
>            proxy_cache cache;
>            proxy_cache_key $host$request_uri$cookie_NO_CACHE;
> 
>            proxy_cache_valid 200 304 12h;
>            proxy_cache_valid 302 301 12h;
>            proxy_cache_valid any 1m;
>            proxy_ignore_headers Cache-Control Expires;
>            pr


2010-09-26