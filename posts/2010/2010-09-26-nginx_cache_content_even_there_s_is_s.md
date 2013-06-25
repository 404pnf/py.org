# nginx cache content even there s is set-cookie



> Hello!
> 
> On Thu, Jul 08, 2010 at 07:24:55PM -0400, icqheretic wrote:
> 
> > Igor Sysoev Wrote:
> > -------------------------------------------------------
> > >     *) Change: now nginx does not cache by default
> > > backend responses, if
> > >        they have a "Set-Cookie" header line.
> >
> > What's the recommended method to cache even with the Set-Cookie header
> > present?
> 
> proxy_ignore_headers Set-Cookie;
> proxy_hide_header Set-Cookie;
> 
> Note that Set-Cookie header no longer hidden by default so you  have to explicitly hide it via proxy_hide_header if it's not intended to be sent to all users.


2010-09-26