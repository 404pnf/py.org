require 'find'
require 'fileutils'

# usage script.rb inputfolder outputfolder

INPUT,OUTPUT = ARGV
INPUT = INPUT.chomp('/')
LENGTH = 48 # shorten filename to this length
p 'input and output dir are: ', INPUT, OUTPUT
p "shorten filename to #{LENGTH} characters."


files = Find.find(INPUT).reject { |f| File.directory? f}

path_basename_tuple = files.map { |f| [File.dirname(f), File.basename(f)] }
#p path_basename_tuple[34]

basename_shortened = path_basename_tuple.map do |t| 
	o_path, o_filename = t 	
	o_path_with_fn = o_path + '/' + o_filename 
	new_path = o_path.sub(INPUT,OUTPUT)
	new_fn = o_filename.chomp('.txt').slice(0,LENGTH) + '.txt'
	new_path_with_fn = new_path + '/' + new_fn 
  	[o_path_with_fn, new_path_with_fn, new_path]
end

p basename_shortened[34]

basename_shortened.each do |t|
  old_file, new_file, new_path = t
#  p t
  FileUtils.mkdir_p new_path unless File.exist? new_path
  FileUtils.cp old_file, new_file, :verbose => true
end  

