# 最终只搞定了nginx php-cgi drupal


## 启动php-cgi
      ./spawn-php
参考： http://pengyou.rijiben.org/node/3185


## nginx中相应设置
 location ~ \.php$ {
          try_files $uri @drupal;       ### check for existence of php file
          fastcgi_pass    127.0.0.1:3456; 
          # make sure php-cgi is running at /home/apache/apps/fastcgiphp/bin/php-cgi -b 127.0.0.1:3456
          fastcgi_index   index.php;
          fastcgi_param   SCRIPT_FILENAME $document_root$fastcgi_script_name;
          include         fastcgi_params;
    }

参考：  http://www.webinit.org/2009/08/15/nginx-drupal-visited/
## 其他都照片Omega的nginx conf就好了
搜索 drupal nginx omega

## 配置开机启动
编辑 /etc/rc.local 加入下面的话

      #启动nginx和php-cgi
      /home/apache/apps/fastcgiphp/bin/php-cgi -b 127.0.0.1:3456
      /home/apache/apps/nginx/sbin/nginx

## 停止或者重新启动php-cgi
      pkill php-cgi
:)



2010-09-26