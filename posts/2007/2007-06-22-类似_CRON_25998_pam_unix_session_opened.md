# 类似 CRON 25998 pam unix session opened for user root by uid 0 之类的信息并不可怕

查看系统log，
less /var/log/auth.log
发现好多条类似

> Jun 19 14:00:01 blog CRON[25998]: (pam_unix) session opened for user root by (uid=0)

吓我一跳。我可是根本禁止了root帐号啊

还好，发现是虚惊一场
http://www.linuxforums.org/forum/linux-security/43305-my-machine-risk.html

> Don't worry about it, that's all done by CRON and its cronjobs, they all run as root by default.

> that's right cron opened all those sessions. anyway the su was opened by user nobody - no cause for alarm.

> when u check ur logs look out for those with ip addr n user name interchage for other user names t with SU. then u will know u r at risk.

> in the mean time use security auditing tools and IPS/IDS packages like SNORT, TRIPWIRE etc.

2007-06-22