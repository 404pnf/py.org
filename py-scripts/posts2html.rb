# -*- coding: utf-8 -*-
require 'fileutils'
require 'kramdown'

# usage script.rb inputfolder outputfolder
# convert \.txt files in inputfolder to html files in outputfolder

$input = ARGV[0] # input folder
$output = ARGV[1] # output folder

Dir.mkdir $output unless File.exist? $output

files = Dir.glob("#{$input}/**/*.txt") # files是数组，是带有文件路径的文件

files.each do |fn|
  content = IO.read(fn)
  mytitle = content.split(/\n/)[0].sub(/^# /, '') # 第一行是题目
  newfn = File.basename(fn, '.txt')
  newfn = newfn + '.html'
  p newfn
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

  File.open("#{$output}/#{newfn}", 'w') do |f|
    f.puts html_header
    f.puts html_content
    f.puts html_footer
  end

end
