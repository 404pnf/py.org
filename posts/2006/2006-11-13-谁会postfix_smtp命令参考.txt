# 谁会postfix smtp命令参考

postfix不会设置啊 信发不出去或发出去被拒收啊。请求帮忙啊。

http://www.freesoft.org/CIE/RFC/821/15.htm
The following are the SMTP commands:
<!--break-->
HELO <SP> <domain> <CRLF>
 
MAIL <SP> FROM:<reverse-path> <CRLF>
 
RCPT <SP> TO:<forward-path> <CRLF>
 
DATA <CRLF>
 
RSET <CRLF>
 
SEND <SP> FROM:<reverse-path> <CRLF>
 
SOML <SP> FROM:<reverse-path> <CRLF>
 
SAML <SP> FROM:<reverse-path> <CRLF>
 
VRFY <SP> <string> <CRLF>
 
EXPN <SP> <string> <CRLF>
 
HELP [<SP> <string>] <CRLF>
 
NOOP <CRLF>
 
QUIT <CRLF>
 
TURN <CRLF>


2006-11-13