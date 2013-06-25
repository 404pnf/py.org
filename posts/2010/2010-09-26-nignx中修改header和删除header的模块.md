# nignx中修改header和删除header的模块



核心的header摸过功能只能添加(append)header，不能删除和修改（例如apache中的unset）

模块项目地址： http://wiki.nginx.org/NginxHttpHeadersMoreModule

> This is an enhanced version of the standard headers module because it provides more utilities like resetting or clearing "builtin headers" like Content-Type, Content-Length, and Server.
> 
> It also allows you to specify an optional HTTP status code criteria using the -s option and an optional content type criteria using the -t option while modifying the output headers with the more_set_headers and more_clear_headers directives. For example,
> 
> Wildcard * can also be used to specify a header name pattern. For example, the following directive effectively clears any output headers starting by "X-Hidden-":
> 
>     more_clear_headers 'X-Hidden-*';


2010-09-26