#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'fileutils'
require 'kramdown'
require 'erubis'

# USAGE script.rb inputfolder outputfolder

# convert \.txt files in inputfolder to html files in outputfolder

DEBUG = nil
input = ARGV[0] || '../posts'
output = ARGV[1] || '../site'
VIEW_FOLDER = '../views'

Dir.mkdir output unless File.exist? output

# files是数组，是带有文件路径的文件
files = Dir.glob("#{input}/**/*.md") 

files.each do |fn|
  # 文章全文
  content_md = File.read(fn)
  content_html = Kramdown::Document.new(content_md).to_html
  # 第一行是题目，比如： '# this is a title'
  title_raw, _ = content_md.split(/\n/)[0]
  title = if title
            title_raw.sub(/^# /, '') 
          else
            'no title'
          end
    
  path, fn = File.dirname(fn), File.basename(fn)  
  #p path # "../posts//2012"
  newpath =  path.sub(input, output)
  #p newpath
  newfn = File.basename(fn, '.md') + '.html'
  Dir.mkdir newpath unless File.exist? newpath
  
  # here comes erubis
  tpl = File.read('../views/post.eruby.html')
  eruby = Erubis::Eruby.new(tpl)
  article_html =  eruby.result(binding())
  
  p "generating #{newpath}/#{newfn}"
  File.write("#{newpath}/#{newfn}", article_html)
end
