""""""""""""""""""""""""
"kenkenkenview's .vimrc"
""""""""""""""""""""""""

"setting tab space
se tabstop=2
se softtabstop=2
se shiftwidth=2
"show line number
se nu
se rnu
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
"x,s,p,P don't save register
nnoremap x "_x
vnoremap x "_x
nnoremap s "_s
vnoremap s "_s
"read .vimrc when vim is up
autocmd! bufwritepost ~/.vimrc source %

"--------"
"dain.vim"
"--------"

let s:dein_dir = expand('~/.cache/dein')
let s:toml_dir = expand('~/.vim/dein/toml')
let s:toml = s:toml_dir . '/dein.toml'
let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin(s:dein_dir)

call dein#load_toml(s:toml, {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy': 1})

call dein#add('lambdalisue/fern.vim')

call dein#end()

if dein#check_install()
  call dein#install()
endif

"-------------"
"test settings"
"-------------"

se ignorecase
se smartcase
se hlsearch

