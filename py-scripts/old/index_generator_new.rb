# -*- coding: utf-8 -*-
require 'fileutils'
require 'cgi'
require 'find'
# usage: script dir

# 脚本进入dir，生成文件列表index.html

$inputdir = ARGV[0].chomp('/')
def separate_path_filename(str)
  # return a array, array[0] is matched string, 
  # array[1] is path, array[2] is filename
  /(.*\/)([^\/]+$)/.match(str) 
end
def r_index_generator(dir)
  dir = File.expand_path($inputdir)
  # get all path
  dir_arr = []
  Find.find(dir) do |f|
    next unless File.directory? f
    dir_arr << f
  end
  #  p dir_arr
  dir_arr.each do |d|
    filelist = Dir.entries(d) # filelist is an array with all files include '.' and '..'
    filelist.reject! {|f| not /\.html$/ =~ f }
    filelist.reject! {|f| f == '.' or f == '..'}
    #p filelist
    links = ''
    filelist.each do |html|
      # p html
      url = CGI::escape(html)
      # url = URI::encode(fn)  在ruby 1.9中会报 URI.escape is obsolete 过时啦
      # html now is a str '2012-02-15-ruby_-w_and_interpreted_as_grouped_expression_的错误是函数和参数直接有空白.html'
      articleTitle = html.sub(/[0-9]{4}-[0-9]{2}-[0-9]{2}-/, '').sub(/\.html$/, '')
      link = "<li><a href=\"#{url}\">#{articleTitle}</a></li>\n"
      links << link
    end
    folder = separate_path_filename(d)[1].split('/').last
    File.open("#{d}/index.html", "w") do |f|
      f.puts '<!DOCTYPE html><html><head><meta charset="utf-8"><title>' + folder + '</title><link href="/css/local.css" rel="stylesheet"></head><body>'
      f.puts "<h1>#{folder}</h1>"
      f.puts "<ul id=\"index_page\">"
      f.puts links
      f.puts "</ul>"
      f.puts '</body><footer><a href="/">主页</a></footer></html>'
    end
  end
end

r_index_generator($inputdir)    

