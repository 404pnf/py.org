# proxy pass有时候加个反斜杠能解决奇怪的问题 比如uri中缺个 或者多个 或者不识别 some uri 这种uri



-                 proxy_pass http://127.0.0.1:8080/;
+                 proxy_pass http://127.0.0.1:8080;

some///uri 竟然是正确的uri。


2010-09-26