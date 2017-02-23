
" syntax on
" filetype on
" au BufNewFile,BufRead *.adoc set filetype=asciidoc

set spellfile=~/Documents/vimspell.add


" Press backspace to cancel highlighting
nnoremap <silent> <bs> :noh<return>


" Map Control Up and Down so that it moves lines up and down.
" Map in Normal/Control mode.
:nnoremap <silent> <C-Down> :m.+1<return>==
:nnoremap <silent> <C-Up> :m.-2<return>==

" Map Control Up and Down so that it moves lines up and down.
" Map in Edit mode.
:inoremap <silent> <C-Down> <esc>:m.+1<return>==gi
:inoremap <silent> <C-Up> <esc>:m.-2<return>==gi

" Map Control Up and Down so that it moves lines up and down.
" Map in Visual mode.
:vnoremap <silent> <C-Down> '>+1<return>qv=qv
:vnoremap <silent> <C-Up> '<-2<return>qv=qv


" ASCIIDOC Mappings
" -----------------
" asciidoc bold by pressing Alt-1
" :nnoremap <esc>1 viw<esc>a**<esc>hbi**<esc>

" asciidoc bold by pressing Ctrl-b
"   command mode - bolds word under cursor
"   visual mode  - bolds selected text
:nnoremap <C-b> viwd<esc>i**<esc>pa**<esc>
:vnoremap <C-b> d<esc>i**<esc>pa**<esc>

" asciidoc italic by pressing Ctrl-i
"   command mode - italicize word under cursor
"   visual mode  - italicize selected text
:nnoremap <C-i> viwd<esc>i__<esc>pa__<esc>
:vnoremap <C-i> d<esc>i__<esc>pa__<esc>

" asciidoc mono by pressing Ctrl-i
"   command mode - mono word under cursor
"   visual mode  - mono selected text
:nnoremap <C-i> viwd<esc>i++<esc>pa++<esc>
:vnoremap <C-i> d<esc>i++<esc>pa++<esc>



" asciidoc remove *RA by pressing Alt-1
" :nnoremap <A-1> viw<esc>a**<esc>2hbi**<esc>

" asciidoc *RA File by pressing Alt-2
:nnoremap <esc>2 viwd<esc>i__<esc>pa__<esc>
:vnoremap <esc>2 d<esc>i__<esc>pa__<esc>

" asciidoc *RA Generic Entity by pressing Alt-3
:nnoremap <esc>3 viwd<esc>i__<esc>pa__<esc>
:vnoremap <esc>3 d<esc>i__<esc>pa__<esc>

" asciidoc *RA Important Term by pressing Alt-4
" Add small caps
:nnoremap <esc>4 viwd<esc>i__++<esc>pa++__<esc>
:vnoremap <esc>4 d<esc>i__++<esc>pa++__<esc>

" asciidoc *RA Software Name by pressing Alt-5
:nnoremap <esc>5 viwd<esc>i__++<esc>pa++__<esc>
:vnoremap <esc>5 d<esc>i__++<esc>pa++__<esc>

" asciidoc *RA UI Element by pressing Alt-6
:nnoremap <esc>6 viwd<esc>i**<esc>pa**<esc>
:vnoremap <esc>6 d<esc>i**<esc>pa**<esc>

" asciidoc *RA Variable Data by pressing Alt-7
:nnoremap <esc>7 viwd<esc>i__**++<esc>pa++**__<esc>
:vnoremap <esc>7 d<esc>i__**++<esc>pa++**__<esc>



