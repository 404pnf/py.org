# script这个tag放在html xhtml文档什么位置是有限制的 监察我管理站点是否符合w3c规范

script这个tag放在html/xhtml文档什么位置是有限制的？监察我管理站点是否符合w3c规范。

我管理的一个站点在w3c markup validator检查时报错：

> Validation Output:  1 Error
> 
>    1. Error Line 251, Column 86: document type does not allow element "script" here.
> 
>       ….del.icio.us/static/js/playtagger.js"></script>
> 
>       ✉
> 
>       The element named above was found in a context where it is not allowed. This could mean that you have incorrectly nested elements -- such as a "style" element in the "body" section instead of inside "head" -- or two elements that overlap (which is not allowed).
> 
>       One common cause for this error is the use of XHTML syntax in HTML documents. Due to HTML's rules of implicitly closed elements, this error can create cascading effects. For instance, using XHTML's "self-closing" tags for "meta" and "link" in the "head" section of a HTML document may cause the parser to infer the end of the "head" section and the beginning of the "body" section (where "link" and "meta" are not allowed; hence the reported error).

根据提示，可能是script这行放错了地方。我现在是放在文档最最后。
应该放在header中还是body中还是footer中呢？
我没有查相关规定呢？

## rijiben.org的错误

>    1.   Error  Line 48, Column 16: value of attribute "clear" cannot be "both"; must be one of "left", "all", "right", "none".
> 
>       	<br clear="both"/>
> 
>       ✉
> 
>       The value of the attribute is defined to be one of a list of possible values but in the document it contained something that is not allowed for that type of attribute. For instance, the “selected” attribute must be either minimized as “selected” or spelled out in full as “selected="selected"”; a value like “selected="true"” is not allowed.

再次检查： http://validator.w3.org/check?uri=http%3A%2F%2Fwww.rijiben.org%2F&charset=(detect+automatically)&doctype=Inline&group=0

## 所有drupal站点都表现很好

除了用那个播放mp3的script的模板我没放对位置，其余全部没有一个错误。drupal的theme质量高呀。也许是我幸运。更高兴的是，有些模板我说修改过的，竟然没有引入错误！ ：）

## gaolewen站点错误很多

http://validator.w3.org/check?uri=http%3A%2F%2Fwww.gaolewen.com&charset=(detect+automatically)&doctype=Inline&group=0

但由于该软件和模板都不是我负责，所以我也不准备费心去修改了。


2008-06-20