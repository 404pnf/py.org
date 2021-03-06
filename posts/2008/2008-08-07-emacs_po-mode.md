# emacs po-mode

emacs po-mode
全面了解：
http://www.emacswiki.org/cgi-bin/wiki/PoMode
http://www.gnu.org/software/gettext/manual/html_node/PO-Mode.html#PO-Mode

## 安装
默认就应该有而且把po/pot文件拽到emacs中应该能自动转换到po模式

## 启动
如果没有自动启动，用 Alt-x po-mode

## 快捷键

The main PO commands are those which do not fit into the other categories of subsequent sections. These allow for quitting PO mode or for managing windows in special ways.

_
    Undo last modification to the PO file (po-undo).
Q
    Quit processing and save the PO file (po-quit).
q
    Quit processing, possibly after confirmation (po-confirm-and-quit).
0
    Temporary leave the PO file window (po-other-window).
?
h
    Show help about PO mode (po-help).
=
    Give some PO file statistics (po-statistics).
V
    Batch validate the format of the whole PO file (po-validate). 


http://www.gnu.org/software/gettext/manual/html_node/Main-PO-Commands.html#Main-PO-Commands


.
    Redisplay the current entry (po-current-entry).
n
    Select the entry after the current one (po-next-entry).
p
    Select the entry before the current one (po-previous-entry).
<
    Select the first entry in the PO file (po-first-entry).
>
    Select the last entry in the PO file (po-last-entry).
m
    Record the location of the current entry for later use (po-push-location).
r
    Return to a previously saved entry location (po-pop-location).
x
    Exchange the current entry location with the previously saved one (po-exchange-location)

http://www.gnu.org/software/gettext/manual/html_node/Entry-Positioning.html#Entry-Positioning

t
    Find the next translated entry (po-next-translated-entry).
T
    Find the previous translated entry (po-previous-translated-entry). 
http://www.gnu.org/software/gettext/manual/html_node/Translated-Entries.html#Translated-Entries

z
    Find the next fuzzy entry (po-next-fuzzy-entry).
Z
    Find the previous fuzzy entry (po-previous-fuzzy-entry).
<TAB>
    Remove the fuzzy attribute of the current entry (po-unfuzzy).

http://www.gnu.org/software/gettext/manual/html_node/Fuzzy-Entries.html#Fuzzy-Entries

u
    Find the next untranslated entry (po-next-untranslated-entry).
U
    Find the previous untranslated entry (po-previous-untransted-entry).
k
    Turn the current entry into an untranslated one (po-kill-msgstr). 

http://www.gnu.org/software/gettext/manual/html_node/Untranslated-Entries.html#Untranslated-Entries

<RET>
    Interactively edit the translation (po-edit-msgstr).
<LFD>
C-j
    Reinitialize the translation with the original, untranslated string (po-msgid-to-msgstr).
k
    Save the translation on the kill ring, and delete it (po-kill-msgstr).
w
    Save the translation on the kill ring, without deleting it (po-kill-ring-save-msgstr).
y
    Replace the translation, taking the new from the kill ring (po-yank-msgstr). 

## C-c C-c 提交条目翻译**

The command <RET> (po-edit-msgstr) opens a new Emacs window meant to edit in a new translation, or to modify an already existing translation. The new window contains a copy of the translation taken from the current PO file entry, all ready for edition, expunged of all quoting marks, fully modifiable and with the complete extent of Emacs modifying commands. When the translator is done with her modifications, she may use C-c C-c to close the subedit window with the automatically requoted results, or C-c C-k to abort her modifications. See Subedit, for more information. 

http://www.gnu.org/software/gettext/manual/html_node/Modifying-Translations.html#Modifying-Translations

    Interactively edit the translator comments (po-edit-comment).
K
    Save the translator comments on the kill ring, and delete it (po-kill-comment).
W
    Save the translator comments on the kill ring, without deleting it (po-kill-ring-save-comment).
Y
    Replace the translator comments, taking the new from the kill ring (po-yank-comment). 

http://www.gnu.org/software/gettext/manual/html_node/Modifying-Comments.html#Modifying-Comments

C-c C-c
    Complete edition (po-subedit-exit).
C-c C-k
    Abort edition (po-subedit-abort).
C-c C-a
    Consult auxiliary PO files (po-subedit-cycle-auxiliary). 

http://www.gnu.org/software/gettext/manual/html_node/Subedit.html#Subedit

## 有了po-mode，翻译po文件简直太舒服和简单了。

## 当然，vim也有相应插件。
http://vim.sourceforge.net/scripts/script.php?script_id=695



2008-08-07