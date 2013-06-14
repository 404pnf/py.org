# 使用ghci的时候出现这个错误如何解决

Prelude> a = 3
 

:1:2: parse error on input `='
I figured there must be something wrong with my installation of the compiler since I was copying and pasting the example across and having this problem. Having reinstalled that, however, I still had the same problem.

I eventually came across this blog post which points to a mailing list thread from a few years ago where pjd explains that the ‘let’ construct is required when defining a variable from ghci and wouldn’t necessarily be needed in a normal program:

pjd	osfameron: about the ghci thing, you have to prefix definitions with “let”

as in: let simple x y z = x * (y + z)

pjd	the reason for this is that ghci is in an implicit do block

pjd	so it’s not exactly like top-level haskell

We have to use a ‘let’ in front of any variable/function definitions and then it will work as expected:

http://www.markhneedham.com/blog/?s=parse+error+on+input+`%3D%27
