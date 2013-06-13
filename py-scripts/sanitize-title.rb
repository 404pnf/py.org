# -*- coding: utf-8 -*-
def sanitize(title)
  # tr! 返回 nil 如果没有任何修改，因此也不要使用
  title = title.tr(' `~!@#$%^&*()_+=\|][{}"\';:/?.>,<', '_')
  title = title.tr('－·～！@#￥%……&*（）——+、|】』【『‘“”；：/？。》，《', '_')
  title = title.gsub(/_+/, '_').gsub(/^_/, '').gsub(/_$/, '') # 对开头，结尾和多个 _ 做处理
  # 谨慎使用gsbu!
  # !!!!! gsub!的返回值是修改了的str或者nil，如果
  #没有做任何修改的话就是nil
  # 因此最后需要再直接调一下title让本函数最后的输
  #出是title本身的值 
  # 这个bug困惑了好久好久啊！！
  # gsub!(pattern) → an_enumerator
  # Performs the substitutions of String#gsub in place, 
  # returning str, or nil if no substitutions were performed. 
end


#p sanitize(" you! look@at me --ya?")
