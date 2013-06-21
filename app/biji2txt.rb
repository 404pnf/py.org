# -*- coding: utf-8 -*-

require_relative 'sanitize_title.rb'
require 'pp'

# 使用方法 ruby script.rb INPUTFILE OUTPUTFOLDER

# inputfile, 笔记是用markdown格式写的。每一个h1标题代表一篇文章
# 本脚本分割笔记文件到每篇文章一个文件


INPUTFILE  = ARGV[0]
OUTPUTFOLDER = File.expand_path ARGV[1]

Dir.mkdir OUTPUTFOLDER unless File.exist?(OUTPUTFOLDER)

# arr的第一个元素是"\n"
# 因为是用/^# /作为分隔符，所以这个分隔符从字符串中消失了，后面需要加上
newline, *articles = File.read(INPUTFILE).split(/^# /) 

# 把单篇文章写成文件
articles.each do |article| 
  # 每个article的第一行是题目
  filename_raw = article.split(/\n/)[0]
  filename_sanitized = sanitize(filename_raw)
  date = Time.now.strftime("%Y-%m-%d")
  suffix = '.txt'
  filename = date + '-' + filename_sanitized + suffix
  p filename
  # 把题目的h1标题写回去。 \A 表示整个字符串的开始
  whole_article = article.sub(/\A/, '# ') 
  File.write("#{OUTPUTFOLDER}/#{filename}", whole_article)
end
