# 启用nginx statci gzip配合boost压缩的gizp缓存



> So it seems we are already fully compatible with Boost with enabled pre-gzipping if the Nginx version used has gzip_static available and enabled. Thanks!
> http://groups.drupal.org/node/84519#comment-263069
> 
> http://wiki.nginx.org/NginxHttpGzipStaticModule. It needs to be enabled on server build by using ./configure --with-http_gzip_static_module and then by using gzip_static on; in the Nginx configuration file. In fact, I have always used this in my config, just didn't test it with my rewrites for Boost, contributed initially by Brian Mercer. Or maybe Brain tested it already and I overlooked that? Brian?
> http://groups.drupal.org/node/84519#comment-262899


2010-09-26