# nginx infinit redirect problem


> Igor Sysoev to nginx
> show details 4:04 AM (4 hours ago)
> On Mon, Aug 02, 2010 at 10:01:26PM +0200, Fernando Perez wrote:
> 
> > Sorry for the typos, trialing should read trailing.
> >
> > Here is the complete thing for those interested, your mileage may vary
> > depending how you want the backend app to handle /blog/uri or just /uri
> >
> > location ^~ /blog/ {
> >   rewrite                  /blog/(.+) $1 break;
> >   proxy_set_header         Host $http_host;
> >   root                     /optional/root;
> >   proxy_pass               http://127.0.0.1:3000/$1;
> > }
> 
> location ^~ /blog/ {
>   proxy_pass               http://127.0.0.1:3000/;
>   proxy_set_header         Host $http_host;
> }
> 
> 
> --
> Igor Sysoev
> http://sysoev.ru/en/


2010-09-26