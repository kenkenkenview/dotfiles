""""""""""""""""""""""""
"kenkenkenview's .vimrc"
""""""""""""""""""""""""

"setting tab space
se tabstop=2
se softtabstop=2
se shiftwidth=2
"show line number
se nu
"show mode
se showmode
"command complement
se wildmenu
"incremental search
se incsearch
"silent error
se noerrorbells
"in win, \ as / instead
se shellslash
"show brace match
se showmatch matchtime=1
"show status
se laststatus=2
"history set longer
se history=10000
"auto indent
se smartindent
"show title
se title
"allow mouse
se mouse=a
"syntax highlight
syntax on
"jj map esc in insert mode
inoremap <silent>jj <esc>
"two esc cansel highlight
nnoremap <esc><esc> :nohlsearch<cr><esc>

"read .vimrc when vim is up
autocmd! bufwritepost $MYVIMRC source %

"---------"
"NeoBundle"
"---------"

se nocompatible               " Be iMproved
filetype off                   " Required!

"-------------"
"test settings"
"-------------"

se ignorecase
se smartcase
se hlsearch


