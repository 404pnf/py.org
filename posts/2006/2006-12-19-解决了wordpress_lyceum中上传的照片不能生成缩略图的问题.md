# 解决了wordpress lyceum中上传的照片不能生成缩略图的问题

update: http://trac.wordpress.org/ticket/2199
现在的版本2.3左右在wp-admin/admin-functions中查找修改
缩略图如何修改默认大小还是看上面那个ticket。

解决了wordpress/lyceum中上传的照片不能生成缩略图的问题

非常高兴 ；）

如果你使用lyceum，也这么修改

wordpress默认有个设置，上传图片超过一定大小就不能自动生成缩略图了。这个设置非常有问题。现在数码相机照得照片都很大。让别人自己先缩小很多人都不会呢。

所以我参照修改了

修改wp-admin/inline-uploading.php
搜索 1024 ， 那行默认是 < 3 * 1024 *1024
就是说图片要求小于这个值
把那行修改为 1024 * 1024 *1024 就好了。这个足够大了；）


> NO THUMBNAIL ?? WordPress Support
> "Hami and Chillware,
> 
> The current WP upload tool works such that it won't create thumbnails for images above a certain size. I guess the programmers wanted to help you save your gig space.
> 
> What you want to do is open your inline-uploading.php file.
> 
> On line 83 or so, where you see:
> 
> if ( $imagedata['width'] * $imagedata['height'] < 3 * 1024 * 1024 ) {
> 
> You can change the limitation to however large you'd like.
> 
> For example, you can change the "3 * 1024 * 1024" to something like:
> 
> 100 * 100 * 100 * 100 * 100 * 100
> 
> I'm sure you get the point.
> 
> If that doesn't work, try installing the latest version of WP. Maybe you might've altered code somewhere? That will help you compare your coding.
> 
> I just installed a new version of the latest Wordpress, and it worked successfully. So it should work for you."
> http://wordpress.org/support/topic/54549#post-355607

可惜我不是svn装的wp，升级的时候还需要再手工修改 ；（

2006-12-19