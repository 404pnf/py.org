# emacs中让方便调用和插入常用文本段的插件 clipper

emacs中让方便调用和插入常用文本段的插件，clipper

> File: emacs-goodies-el,  Node: clipper,  Next: coffee,  Prev: cfengine,  Up: Top
> 
> 11 clipper - Save strings of data for further use.
> 
> 
> Clipper is a way to handle 'clips' of text with some persistance via
> handles.  A good example is something like the GNU Public License.  If
> you do a lot of Free Software work and need to have a copy of the GPL
> for insertion in your source files, you can save this text as a 'GPL'
> clip.  When you call clipper-insert you will be prompted for a name and
> when you enter GPL this will be inserted.
> 
>    Clipper can also perform search and replacement on token names.  For
> example if want the current buffer filename you can use the token
> `CLIPPER_FILE_NAME_NONDIRECTORY'.
> 
> Available tokens are:
> 
>    `CLIPPER_FILE_NAME_NONDIRECTORY': The current filename without its
> directory.  If this buffer isn't saved to disk then the buffer name is
> used.
> 
>    `CLIPPER_FILE_NAME_NONDIRECTORY_SANS_EXTENSION': The current
> filename without its directory and without an extension.
> 
> The following functions allow you to manipulate clipper:
> 
>    `clipper-create' creates a new clip.
> 
>    `clipper-delete' deletes an existing clip.
> 
>    `clipper-insert' inserts a clip into the current buffer.
> 
>    `clipper-edit-clip' edits an existing clip.
> 
> You might also want to setup personal key bindings:
> 
>      (global-set-key "\C-cci" 'clipper-insert)
>      (global-set-key "\C-ccc" 'clipper-create)

这个方法我感觉比定义abbrev更建议和方便记忆。


2008-07-16