#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'fileutils'
require 'cgi'
require 'find'
require 'erubis'
# USAGE: ruby script.rb input-dir
# 脚本进入dir，生成文件列表index.html

DEBUG = true
DOMAIN = 'http://pengyou.rijiben.org/'
$inputdir = File.expand_path ARGV[0]

def remove_index
  Find.find(File.expand_path($inputdir)) do |path|
    next unless File.basename(path) == 'index.html'
    p "remove #{path}"
    File.unlink path
  end
end
remove_index # remove previously generated html

def remove_date_and_suffix str
  str = str.gsub(/[0-9]{4}-[0-9]{2}-[0-9]{2}-/,'') # remove yyy-mm-dd at the beginning of filename
  str = str.gsub(/\.html$/,'') # remove file suffix
end

dir = $inputdir
Find.find(dir) do |f|
  next unless File.directory?(f)
  # filelist is an array holds filename
  filelist = Dir.entries(f) # filelist is an array with all files include '.' and '..'
    .reject {|i| i == '.' or i == '..'}
    .sort
    .reverse # recent entry on top

  # pretty filenames without date prefix and file suffix
  filename_pretty = filelist.map { |file| remove_date_and_suffix(file) }

  # urls is an array holds CGI::escapde filenames
  urls= filelist.map do |filename|
    CGI::escape(filename)
    # url = URI::encode(fn)  在ruby 1.9中会报 URI.escape is obsolete 过时啦
  end

  # zip it up :)
  links = filename_pretty.zip  urls
  #p links # if DEBUG

  title = f.to_s.split('/').last # get the name of deepest dir

  # here comes erubis
  input = File.read('index.eruby')
  eruby = Erubis::Eruby.new(input)    # create Eruby object
  index_html =  eruby.result(binding())        # get result  

  # same old file writing
  p "generating #{f}/index.html"
  File.open("#{f}/index.html", "w") do |file|
    file.puts index_html
  end
end
