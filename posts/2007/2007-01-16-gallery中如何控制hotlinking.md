# gallery中如何控制hotlinking

从这里连zhaopian.rijiben.org的相片有时候不能直接显示。我查gallery hotlinking。

How to disable hotlinking/rightclick? | Gallery
http://gallery.menalto.com/node/54344

参照上面的方子，我管理员登陆进入site admin，看url rewrite模块， URL Rewrite Administration中setup由这些

>   Approved referers

> Some rules only apply if the referer (the site that linked to the item) is something other than Gallery itself. Hosts in the list below will be treated as friendly referers.

> Warning: If you don't allow empty referer users won't be able to download nor play movies.

> Allow empty referer? 

这段英文我基本没看懂。

我把pengyou.rijiben.org加入到下面的表格里就可以了。

稀里糊涂反正就行了。看来默认是不让gallery站点之外的站点直接引用照片。

2007-01-16