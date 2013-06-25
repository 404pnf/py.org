# 用sed去掉大部分html中的标签 remove most html tags in sed

## remove most html tags in sed
 # remove most HTML tags (accommodates multiple-line tags)
 sed -e :a -e 's/<[^>]*>//g;/</N;//ba'

 # print section of file between two regular expressions (inclusive)
 sed -n '/Iowa/,/Montana/p'             # case sensitive


2007-12-28