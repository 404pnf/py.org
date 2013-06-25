# drupal中如果想启用压缩css和整合javascript以加快浏览者访问速度 那么文件系统中下载方式一定要选公开

## drupal中如果想启用压缩css和整合javascript以加快浏览者访问速度，那么文件系统中下载方式一定要选公开

Drupal can automatically optimize external resources like CSS and JavaScript, which can reduce both the size and number of requests made to your website. CSS files can be aggregated and compressed into a single file, while JavaScript files are aggregated (but not compressed). These optional optimizations may reduce server load, bandwidth requirements, and page loading times.

These options are disabled if you have not set up your files directory, or if your download method is set to private.

如果“文件系统”中的“下载方式”设为“私有”，就不能启用压缩css和整合javascript了。

以前的站点从来没设置为私有，今天尝试了在一个站点设置为私有，结果发现无法压缩css在catch页面无法选择，仔细看了一下提示才明白。记录一下。

2008-04-02