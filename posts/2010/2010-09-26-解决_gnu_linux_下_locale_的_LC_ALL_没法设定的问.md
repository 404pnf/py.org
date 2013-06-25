# 解决 gnu linux 下 locale 的 LC ALL 没法设定的问题


不知道什么时候自己捣鼓设定locale后，LC_ALL这个设定没了，而且不知道在哪里设定了。后果就是在bash中每次tab补全都报错误信息，很干扰视觉。

后来查了半天，干脆在自己的 ~/.bashrc 加了一个行

      # set locale
      export set LC_ALL=C

开始想设置为 zh_CN.UTF-8 但不行，干脆用 C 了。现在在bash中tab补全就不会报错了。


2010-09-26