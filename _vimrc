" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Dec 17
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

colorscheme desert

"execute pathogen#infect()
"Helptags

"autocmd vimenter * NERDTree

let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 140
let g:ctrlp_by_filename = 1

"enable mouse copy
set guioptions+=a
"remove the menu bar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

"backspace deleting
set backspace=indent,eol,start

"show invisible
set listchars=tab:>-,trail:-
set list
"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

set incsearch
set hlsearch

" show background on the current line
set cursorline

set nu

"for tab it will always display as 2 spaces
set tabstop=2
"this is kind of for setting the indention 
"it happens duirng editing
"e.g, if softtabstop is set less than tabstop,
"and you press several times of tab, it may create new tab
set softtabstop=2
"this is for if covert new tab into spaces
set expandtab
"for << or >> in normal mode
set shiftwidth=2

set nobackup
set nowritebackup
set noswapfile

set dir=%TMP%
set backupdir=%TMP%

set clipboard=unnamed

set fileencoding=utf-8
set encoding=utf-8
"set termencoding=utf-8
set guifont=Courier\ New\:h12
set guifontwide=NSimsun\:h12

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

set autochdir
syntax on

" autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


" plugin for js formatter
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-fugitive'

Plugin 'pangloss/vim-javascript'

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-unimpaired'
" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <Leader>p :CtrlPBookmarkDir<enter>

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
autocmd BufReadPost fugitive://* set bufhidden=delete

" Use ~x on an English Windows version or ~n for French.
au GUIEnter * simalt ~x

filetype plugin on    

set ic
set smartcase
set spell
set dictionary+=$VIM\words 

let g:syntastic_always_populate_loc_list = 1

"show the status line
set laststatus=2
