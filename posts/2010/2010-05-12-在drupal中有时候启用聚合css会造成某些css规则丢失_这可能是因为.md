# 在drupal中有时候启用聚合css会造成某些css规则丢失 这可能是因为某个css有没有封闭的括号之类错误



>推测:在drupal中的CSS优化是先检查是不是符合语法要求,有借就不做CSS优化,所以整个CSS样式才会丢失,不启用CSS优化时,浏览器自动忽略错误之后的信息.所以在少}之后的CSS都不启作用.
>http://joom.net.ru/content/mo-ban-css-quan-bu-shi-xiao


2010-05-12