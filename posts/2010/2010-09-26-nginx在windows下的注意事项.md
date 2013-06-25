# nginx在windows下的注意事项



下面是我要注意的。

我不明白cache不正常工作在vista和later下面，那么windows server 2003下是否可以用proxy_cache类型的命令？

> http://nginx.org/en/docs/windows.html
> There is almost full-functionality in nginx/Windows as compared with the Unix version, except XSLT filter, image filter, GeoIP module, and embedded Perl language.
> 
> Known issues
> 
> Although several workers can be run, only one of them actually does any work.
> A worker can handle no more than 1024 simultaneous connections.
>
> The cache and other modules which require shared memory support do not work in Windows Vista and later due to address space layout randomization being enabled in these Windows versions.

最值得注意的就是：不要用windows！我没办法，帮同事管个机器。后面跑多个环境：php,asp，因此nginx在前面做个director。


2010-09-26