#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'fileutils'
require 'kramdown'
require 'erubis'

# USAGE script.rb inputfolder outputfolder

# convert \.txt files in inputfolder to html files in outputfolder

DEBUG = nil
input = File.expand_path ARGV[0] # input folder
output = File.expand_path ARGV[1] # output folder

Dir.mkdir output unless File.exist? output

files = Dir.glob("#{input}/**/*.txt") # files是数组，是带有文件路径的文件

files.each do |fn|
  content = File.read(fn)
  mytitle = content.split(/\n/)[0].sub(/^# /, '') # 第一行是题目 '# this is a title'
  newfn = File.basename(fn, '.txt')
  newfn = newfn + '.html'
  p newfn if DEBUG
  article_content = Kramdown::Document.new(content, :auto_ids => false).to_html
  # here comes erubis
  input = File.read('post.eruby.html')
  eruby = Erubis::Eruby.new(input)    # create Eruby object
  article_html =  eruby.result(binding())        # get result  
  # same old file writing
  p "generating #{output}/#{newfn}"
  File.open("#{output}/#{newfn}", article_html)
end
