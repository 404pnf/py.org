# markdown-mode语法

## markdown-mode语法

Anchors (C-c C-a)
C-c C-a l
    Creates an inline link.  If there is an active region,
    this text will be used as the anchor text
    (markdown-insert-link).

 Commands (C-c C-c)
C-c C-c m
    Run markdown on the current buffer and preview the output in
    another buffer (markdown).
C-c C-c p
    Run markdown on the current buffer and preview the output in
    a browser (markdown-preview).

 Images (C-c C-i)
C-c C-i i
    Insert an image, using the current region (if any) as the alt
    text (markdown-insert-image).

2008-05-23