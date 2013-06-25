# ubuntu gnu linux 下自动安装和升级google chrome的开发版本


http://blog.joysboy.net/ubuntu-install-chrome-dev/
在软件源里添加下面的源

deb http://dl.google.com/linux/deb/ stable main #Google

然后在终端执行下列指令，不过更新那个可以省略，因为添加源后关闭窗口默认会更新一次，除非是你修改文件添加的

sudo apt-get update
sudo apt-get install google-chrome-unstable

可能安装时会有警告，没有key验证，直接允许就行


2010-06-13