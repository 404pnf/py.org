# flv to mpeg 把flv文件批量转成mpeg

## 转单个文件
> ffmpeg -i video.flv -ab 56 -ar 22050 -b 500  -s 320x240 test.mpg

参考
http://www.google.com/search?q=ffmpeg+flv+to+mpeg
  
http://asuaf.org/~jj/blog/index.php/2006/01/08/convert-google-video-flvs-into-avi-mpg-etcin-linux/

http://soenkerohde.com/tutorials/ffmpeg/

## 批量转

方法一：还是用上面的命令，放在for do循环中。我一贯的方法。

       for f in *.flv;do ffmepg -i $f -ab 56 -ar 22050 -b 500 -s 320x240 $f.mpg;done

方法二：

http://wiki.rijiben.org/Ziyouruanjian/%e6%89%b9%e9%87%8f%e8%bd%ac%e6%8d%a2flv%e5%88%b0mpeg%e6%96%87%e4%bb%b6

       #!/bin/bash
        echo based on "fakap mp3-to-flv converter
        http://blog.fakap.net/mp3toflv/"
          echo "Copyright (c) mypapit 2007"
          echo more on this script: http://pengyou.rijiben.org
          echo Usage: sh flvtompeg.sh *
          echo ""

          if (($# ==0))
          then
                echo "Usage: flvtompeg [flv files] ..."
                exit
          fi

          while (($# !=0 ))
          do 
                ffmpeg -i $1 -ab 56 -ar 22050 -b 500 -s 320x240 $1.mpg
                shift
          done

2007-04-21