# nginx中不设定或者不检查 header last-modified

搜索 nginx header unset last-modified 找到了答案

> Igor Sysoev
> Re: How to disable/not to send Last-Modified Header
> March 11, 2010 04:04PM 	Admin
> Registered: 1 year ago
> Posts: 2,277
> On Thu, Mar 11, 2010 at 12:08:43PM -0500, tunggad wrote:
> 
> > We are using NGINX to front end Jetty Server, serving static content is done by NGINX and we want to disable/remove the Last-Modified Header.
> >
> > The Reason why we want to disable this header is to eliminate validation requests If-Modified-Since. The build process automatically changes the filename of the static artefacts every when we deploy new version, so these validation requests are not necessary.
> 
> Disabling If-Modified-Since validation:
> 
> if_modified_since off;
> 
> Removing Last-Modified header:
> 
> add_header Last-Modified "";
> 
> However, I do not see why If-Modified-Since may hinder if you generete
> unique names.
> http://forum.nginx.org/read.php?2,62782,62863
