# 统计apache log中那些被访问超过n次的元素是什么

> Count number of hits per IP address in last 2000 lines of apache logs and print the IP and hits if hits > 20
>      tail -n2000 /var/www/domains/*/*/logs/access_log | awk '{print (}' | sort | uniq -c | sort -n | awk '{ if (( > 20)print (,[}])))
> http://feedproxy.google.com/~r/Command-line-fu/~3/cGz9Tdsa5Z0/count-number-of-hits-per-ip-address-in-last-2000-lines-of-apache-logs-and-print-the-ip-and-hits-if-hits-20


2010-05-12