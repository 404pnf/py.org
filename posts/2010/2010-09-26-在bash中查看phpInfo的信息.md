# 在bash中查看phpInfo的信息


     echo "<?php phpinfo(); ?>" | php > phpinfo.txt
这个命令把phpinfo出来的信息存放到phpinfo.txt中了。这个命令还可以使用grep。比如寻找所有含有soap的行
      echo "<?php phpinfo(); ?>" | php |grep soap
非常好用。

快速查看各种上传大小限制：
      echo "<?php phpinfo(); ?>" | php |grep soap
      post_max_size => 8M => 8M
      realpath_cache_size => 16K => 16K
      upload_max_filesize => 2M => 2M


2010-09-26