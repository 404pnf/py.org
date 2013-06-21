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
INPUTDIR = File.expand_path ARGV[0] || '../posts'
INDEX_TPL = '../index.eruby.html'

def remove_index
  Find.find(File.expand_path($inputdir)) do |path|
    next unless File.basename(path) == 'index.html'
    p "remove #{path}"
    File.unlink path
  end
end
remove_index # remove previously generated html

def remove_date_and_suffix str
  # remove yyy-mm-dd at the beginning of filename
  str = str.gsub(/[0-9]{4}-[0-9]{2}-[0-9]{2}-/,'') 
  # remove file suffix
  str = str.gsub(/\.html$/,'') 
end

def gen_index(dir, domain=DOMAIN, tpl=INDEX_TPL)
  Find.find(dir) do |f|
    # we only want directories
    next unless File.directory?(f)
    
    # filelist is an array holds filename
    # Dir.entris inclues '.' and '..'
    filelist = Dir.entries(f) 
      .reject {|i| i == '.' or i == '..'}
      .sort
      .reverse # recent entry on top

    # pretty filenames without date prefix and file suffix
    filename_pretty = filelist.map { |file| remove_date_and_suffix(file) }

    # urls is an array holds CGI::escapde filenames
    # url = URI::encode(fn)  在ruby 1.9中会报 URI.escape is obsolete 过时啦
    urls= filelist.map { |filename| CGI::escape(filename)}

    # zip it up :)
    links = filename_pretty.zip(urls)
    
    # get the name of deepest dir
    # use it as the title of index.html
    title = f.to_s.split('/').last 

    # here comes erubis
    input = File.read(INDEX_TPL)
    eruby = Erubis::Eruby.new(input) # create Eruby object
    index_html =  eruby.result(binding()) # bind variable links, title, and DOMAIN to eruby tpl.

    # same old file writing
    p "generating #{f}/index.html"
    File.open("#{f}/index.html", index_html)
  end
end

gen_index(INPUTDIR) # no need to set optional arguments like domain, and tpl
