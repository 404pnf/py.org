require 'find'

# usage: script.rb path
# generate4 sitemap.txt for inputfoder
# run this script for site/ folder
# in html/, there shoud be a symbolic link to this script

def sitemap
  site_path = ARGV[0] || '../site'
  domain = 'http://pengyou.rijiben.org'
  fn = Find.find("#{site_path}").select { |f| f =~ /.html$/}
  filenames = fn.map { |f| f.sub(/^\./, domain)}
  sitemap_str = filenames.join("\n")
  File.open("#{site_path}/sitemap.txt", sitemap_str)
  puts "sitemap is generated at #{site_path}/sitemap.txt ."  
end
