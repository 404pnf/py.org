# git-blog bug report


## improvment on documentaton


## rake create[directory]: [] is a must and no space between create and []
In the doc, rake create[~/Documents/Blog]

This must be the ignorance of rake convention in my part, but I thought the [] there was used to show this is a parameter.  But, after trying several times I understood:

1. [] must be there
2. create[~/folder], no space is allowed between create and []

Here are the proof:

       $ rake create ~/anothergitblogtry
       mkdir /home/user/source.code/git-blog/blog
       ** git-blog created at /home/user/source.code/git-blog/blog!
       ** now `cd /home/user/source.code/git-blog/blog` and `rake initialize`!
       
       $ rake create [~/anothergitblogtry]
       mkdir /home/user/source.code/git-blog/blog
       ** git-blog created at /home/user/source.code/git-blog/blog!
       ** now `cd /home/user/source.code/git-blog/blog` and `rake initialize`!
       rake aborted!
       Don't know how to build task '[~/anothergitblogtry]'
       (See full trace by running task with --trace)
       
       $ rake create[~/anothergitblogtry]
       mkdir /home/user/anothergitblogtry
       ** git-blog created at /home/user/anothergitblogtry!
       ** now `cd /home/user/anothergitblogtry` and `rake initialize`!
       
It might be newbie-friendly if this part is more verbose in the doc.


## Files in posts directory must end with pre-defined ext?

Or the files will not be rendered.  Or they cause the program to abort.

Would you please update the doc to say explicitly which ext should be used.  For example:  only files end with markdown/textile/extra will be rendered.

proof:
       
       $ ls posts/
       welcome.markdown
       $ rake deploy --trace
       ** Invoke deploy (first_time)
       ** Invoke clobber (first_time)
       ** Execute clobber
       ** Invoke index (first_time)
       ** Execute index
       index.xhtml compiled
       ** Execute deploy
       /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': iconv will be deprecated in the future, use String#encode instead.
       /home/user/tmp/gitblogtest/lib/git-blog/parser/markdown.rb:4: warning: already initialized constant Markdown
       posts/welcome.markdown -> posts/welcome.xhtml (as markdown)

Defaut welcome.markdown page works.
       
	   $ vim posts/1st
       $ ls posts/
       1st  welcome.markdown
       $ rake deploy --trace
       ** Invoke deploy (first_time)
       ** Invoke clobber (first_time)
       ** Execute clobber
       ** Invoke index (first_time)
       ** Execute index
       index.xhtml compiled
       ** Execute deploy
       /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': iconv will be deprecated in the future, use String#encode instead.
       /home/user/tmp/gitblogtest/lib/git-blog/parser/markdown.rb:4: warning: already initialized constant Markdown
       posts/welcome.markdown -> posts/welcome.xhtml (as markdown)

A new file without ext name is ignored.
       
       $ vim posts/2nd.txt
       $ git add .
       $ git commit -am 'filename ext testing'
       [master 5a360f4] filename ext testing
        1 file changed, 3 insertions(+)
         create mode 100644 posts/2nd.txt
         $ rake deploy --trace
         ** Invoke deploy (first_time)
         ** Invoke clobber (first_time)
         ** Execute clobber
         rm -f posts/welcome.xhtml
         ** Invoke index (first_time)
         ** Execute index
         index.xhtml compiled
         ** Execute deploy
         /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': iconv will be deprecated in the future, use String#encode instead.
         /home/user/tmp/gitblogtest/lib/git-blog/parser/markdown.rb:4: warning: already initialized constant Markdown
         posts/welcome.markdown -> posts/welcome.xhtml (as markdown)
         rake aborted!
         wrong argument type nil (expected Regexp)
         /home/user/tmp/gitblogtest/lib/git-blog.rb:176:in `match'
         /home/user/tmp/gitblogtest/lib/git-blog.rb:176:in `block (2 levels) in <top (required)>'
         /home/user/tmp/gitblogtest/lib/git-blog.rb:171:in `each'
         /home/user/tmp/gitblogtest/lib/git-blog.rb:171:in `block in <top (required)>'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:205:in `call'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:205:in `block in execute'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:200:in `each'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:200:in `execute'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:158:in `block in invoke_with_call_chain'
         /usr/lib/ruby/1.9.1/monitor.rb:211:in `mon_synchronize'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:151:in `invoke_with_call_chain'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/task.rb:144:in `invoke'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:116:in `invoke_task'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:94:in `block (2 levels) in top_level'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:94:in `each'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:94:in `block in top_level'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:133:in `standard_exception_handling'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:88:in `top_level'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:66:in `block in run'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:133:in `standard_exception_handling'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/lib/rake/application.rb:63:in `run'
         /var/lib/gems/1.9.1/gems/rake-0.9.2.2/bin/rake:33:in `<top (required)>'
         /usr/local/bin/rake:19:in `load'
         /usr/local/bin/rake:19:in `<main>'
         Tasks: TOP => deploy
         
A file with .txt extenstion is ignored and causes error.


## posts under posts/directory will not be rendered

Only files directly under posts/ will be rendered.  Shall we add a note to the README?

       user@user-desktop:~/tmp/gitblogtest/blog$ ls posts/
       subfolder  welcome.markdown
       user@user-desktop:~/tmp/gitblogtest/blog$ rake deploy --trace
       ** Invoke deploy (first_time)
       ** Invoke clobber (first_time)
       ** Execute clobber
       ** Invoke index (first_time)
       ** Execute index
       index.xhtml compiled
       ** Execute deploy
       /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': iconv will be deprecated in the future, use String#encode instead.
       /home/user/tmp/gitblogtest/lib/git-blog/parser/markdown.rb:4: warning: already initialized constant Markdown
       posts/welcome.markdown -> posts/welcome.xhtml (as markdown)
       user@user-desktop:~/tmp/gitblogtest/blog$ rm posts/welcome.xhtml 
       bai@user-desktop:~/tmp/gitblogtest/blog$ cp posts/welcome.markdown posts/subfolder/
       user@user-desktop:~/tmp/gitblogtest/blog$ rake deploy --trace
       ** Invoke deploy (first_time)
       ** Invoke clobber (first_time)
       ** Execute clobber
       ** Invoke index (first_time)
       ** Execute index
       index.xhtml compiled
       ** Execute deploy
       /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': iconv will be deprecated in the future, use String#encode instead.
       /home/user/tmp/gitblogtest/lib/git-blog/parser/markdown.rb:4: warning: already initialized constant Markdown
       posts/welcome.markdown -> posts/welcome.xhtml (as markdown)
       user@user-desktop:~/tmp/gitblogtest/blog$ ls posts/ -r
       welcome.xhtml  welcome.markdown  subfolder
       user@user-desktop:~/tmp/gitblogtest/blog$ ls posts/ -R
       posts/:
       subfolder  welcome.markdown  welcome.xhtml
       
       posts/subfolder:
       welcome.markdown

Group files in folder is a common way for writing.  I want to use git-blog for documentation of several projects.  Each project has its own folder.  I want to write a diary, with two subfolders, work and life.

If this is considered bloated features, could you point to where should one do it in her fork?  I am not a programmer but I may ask a friend to do that.

## more questons
   
## How to use another markdown parser

I want to use kramdown instead of markuru.  How to do that?

I look around the code and see something relevant:

	  # Maruku                                                                       
	  begin
	  #  require 'maruku'                                                             require 'kramdown'
	  #  Markdown = Maruku                                                            Markdown = kramdown

But it didn't work. :(




## How to make parse ignore yaml frontmatter when parse files, i.e, meta data is allowd in the post

I want the parser to ignore some contents of a files, e.g, I store some meta data of the file in yaml format just in case I want to import all these files in to a database or move to another system.  How to do that?  Ask the parser to ignore line with ^key:value and ^---- in my example.

## How to do incremental rendering?

Suppose i have 10000 files in posts already checked in and deployed.  now i add a new file to the git repo and run rake deploy what would happen, only the new file would be rendered (preferably), or all the files would be rendered again.

From my testing, all posts will be rendered again.

Would it be more appropriate if we nly rendered the changed files since we have git to tell us what change?  Would this be considered a bloated feature?

## error msg: incompatible character encodings: UTF-8 and ASCII-8BIT

posts/2009-10-22-46652.markdown -> posts/2009-10-22-46652.xhtml (as markdown)
rake aborted!
incompatible character encodings: UTF-8 and ASCII-8BIT
/var/lib/gems/1.9.1/gems/maruku-0.6.0/lib/maruku/helpers.rb:97:in `rescue in md_html'



