# nginx 下如何缓存有cookie的请求


参考：  http://forum.nginx.org/read.php?2,105524,106854#msg-106854

> > Igor Sysoev Wrote:
> > -------------------------------------------------------
> > > *) Change: now nginx does not cache by default
> > > backend responses, if
> > > they have a "Set-Cookie" header line.
> >
> > What's the recommended method to cache even with the Set-Cookie header
> > present?
> 
> proxy_ignore_headers Set-Cookie;
> proxy_hide_header Set-Cookie;
> 
> Note that Set-Cookie header no longer hidden by default so you
> have to explicitly hide it via proxy_hide_header if it's not
> intended to be sent to all users.
> 
> Maxim Dounin


2010-09-26