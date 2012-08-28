# -*- coding: utf-8 -*-
require 'fileutils'
require 'kramdown'

files = Dir.glob("posts/**/*.txt") # files是数组，是带有文件路径的文件

files.each do |fn|
  content = IO.read(fn)
  mytitle = content.split(/\n/)[0].sub(/^# /, '') # 第一行是题目
  newfn = fn.sub(/^posts/, 'html') 
  # 新文件名，在html目录；不用担心文件名中出现posts也会被替换，以为我用的是sub，只替换找到的第一个匹配
  newfn = newfn.sub(/txt$/, 'html') # 且文件后缀改为html

  html_content = Kramdown::Document.new(content, :auto_ids => false).to_html
  html_header = <<EOF
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>#{mytitle}</title>
    <link href="/css/local.css" rel="stylesheet">
    </head>
    <body>
EOF
  html_footer = <<EOF
    </body>
    <footer>
    <a href="/">Home</a>
    </footer>
</html>
EOF

  File.open(newfn, 'w') do |f|
    f.puts html_header
    f.puts html_content
    f.puts html_footer
  end

end
