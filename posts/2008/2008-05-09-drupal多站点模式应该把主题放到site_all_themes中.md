# drupal多站点模式应该把主题放到site all themes中

## drupal多站点模式应该把主题放到site/all/themes中

而不是根目录下的themes。

> /home/htdocs/themes]$ less README.txt 
> This directory is reserved for core theme files. Custom or contributed
> themes should be placed in their own subdirectory of the sites/all/themes
> directory. For multisite installations, they can also be placed in a subdirectory
> under /sites/{sitename}/themes/, where {sitename} is the name of your site
> (e.g., www.example.com). This will allow you to more easily update Drupal core files.
> 
> For more details, see: http://drupal.org/node/176043

今天才参考该目录的README.txt，把我用的theme移动到了正确地位置。

同样，根据上面的链接，我用的contributed modules也应该放到sites/all/modules中而不是durpal core的modules。

虽然我以前的做法到现在还没给我带来过任何问题。升级core的时候直接覆盖就好了。再下载相应的contributed modules的新版本覆盖。

但既然这样写了并提醒我们，我还是准备以后按轨范地做。按规范地好处是可以很方便地集中管理contributed modules并且很方便地通过放到不同文件夹就解决了某个站点专用的或者定制的module只在该站点出现和使用的问题。

移动好了。：）


2008-05-09