# 在ubuntu gnu linux 6 06中如何编译lame最新版本

## 在ubuntu gnu/linux 6.06中如何编译lame最新版本

## 简单说就是编译软件需要先装 sudo apt-get install build-essential

装了这个其它的基本都是 
./configure
sudo make
sudo make install


## 很奇怪在ubuntu gnu/linux 6.06中不能用apt安装lame
我办公室的机器记得是用apt装的。但家里说源里没有lame。所以只能自己编译。编译的好出是一般可以用最新版本。源里的不一定是最新的。

## 我走的弯路

编译lame。报错。

装gcc  sudo apt-get install gcc

再次  ./configure

还是报错 failed sainity check，不能装

上网查 ubuntu compile lame。发现6.06应该有lame可以装。但不知道我为什么不能直接用apt安装。看到一篇提到ubuntu wiki上教你如何编译的。提到要装build-essential。

对呀。就是这个东西。不过我想不起名字。

装 sudo apt-get install build-enssential

再次编译 ./configure 成功

安装 先 sudo make 完成后再 sudo make install

lame装好了

进入audacity，export一个文件到mp3，提示我要找lame的库，点查找
audacity带你进入的默认文件夹是/lib/ 里面没有这个文件

寻找那个需要的 libmp3lame.so在哪里，在bash中用 $ whereis libmp3lame

      libmp3lame: /usr/local/lib/libmp3lame.so /usr/local/lib/libmp3lame.la /usr/local/lib/libmp3lame.a


找到了，原来在 /usr/local/lib 中。也对，因为是user自己编译安装的吧，所以放在 /usr/local 中
再次选导出成mp3，让找libmp3lame.so，进入 /user/local/lib 选中，确定。
可以导mp3了

似乎很麻烦。因为没有用apt装嘛
不过搞明白就好了。而且装好后一年半载也不需要动的。

## 如果你非要用apt-get 安装现在最新的lame 3.9.6版本
参考这篇，在你的source.list中加一个deb源就好了。
http://ubuntuforums.org/archive/index.php/t-131405.html
