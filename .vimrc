"###################
"##
"# VIM, JERKS
"##
"###################

"""""""""""""""
" These sections are about how VIM looks

"Syntax highlighting because I'm not a robot
syntax on

"Hardtabs are for nerds
set expandtab
set shiftwidth=2 tabstop=2
set smarttab

"Case insensitive search, except when using capitals
set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent
set smartindent
set nowrap

"Mouse for all modes
set mouse=a

set cmdheight=2

set showmatch

"Show curser location in statusbar
set ruler
"Line numbers
set number

"Highlight matching chars
set showmatch

"Folding settings
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

""""""""""""""
" These sections are about how VIM works

" Move temp files to their own places
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"So, vim does markdown, but doesn't recognize .md as the file type
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"Fuckin' Pathogen (Pathogen is a VIM plugin engine)
execute pathogen#infect()
