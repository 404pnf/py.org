# 在centos上升级ghostscript


centos 5.4 _ gs 8.7
http://chrisschuld.com/2010/01/updating-ghostscript-on-centos-5-4-ghostscript-8-70/

文章中有编译安装方法



最简单方法
      rpm -Uvh http://chrisschuld.com/centos54/ghostscript-8.70-1.x86_64.rpm http://chrisschuld.com/centos54/ghostscript-fonts-5.50-13.1.1.noarch.rpm http://chrisschuld.com/centos54/ghostscript-gtk-8.70-1.x86_64.rpm

但需要lib-jasper的库
从评论中看见，得这么安装
> Had to use these RPM’s again and struggled with the notes I’d made.
> The remi repo isn’t serving “jasper-devel” any more.
> 
> My solution was:
> $ yum install freeglut
> $ rpm -Uvh ftp://ftp.pbone.net/mirror/www.sourcemirrors.org/scotth/centos/5/x86_64/jasper-1.900.1-2.el5.x86_64.rpm
> 
> Then the x64 RPM’s installed fine.
> 
> Thanks again.
> 
> 
> 
> centos5.2+gs8.6
> http://chrisschuld.com/2008/11/updating-ghostscript-on-centos-52-ghostscript-863/


2010-06-13