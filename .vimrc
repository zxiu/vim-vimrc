" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

set tabstop=2 " 1 tab to 2 space for ruby
set softtabstop=2
set shiftwidth=2
set expandtab
set nu "show line number

" input source improve from gui vim
if has("gui_running")
	set noimdisable
	set imi=2
	set ims=2
endif

set noswapfile
" to switch between buffers with unsaved change
set hidden

" highlight col and line
set cursorline
" set cursorcolumn

if has("gui_running")
	colorscheme desert
	set bs=2
	set ruler
	set gfn=Monaco:h16
	set shell=/bin/bash
endif

" EasyMotion_leader_key"
let mapleader=","

" Plugin Plugin here for Ruby on Rails

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'tpope/vim-fugitive' " plugin on GitHub repo
Plugin 'Lokaltog/vim-easymotion' " Quickly move cursor, try ,,w

" Quickly write HTML, just like zencoding but simple engough
" Bundle 'rstacurz/sparkupi', {'rtp': 'vim/'}
" let g:sparkupNextMapping= "<c-m>"

Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
let g:user_emmet_mode='iv'
autocmd FileType html,css,eruby EmmetInstall

Plugin 'tpope/vim-rails.git' " Powerful vim pulgin for rails
set completefunc=syntaxcomplete#Complete " Vim rails synatax complete, try ctrl+x ctrl+u

Plugin 'vim-scripts/The-NERD-Commenter' " Quickly comment your code, try ,cc on selected line
let g:indent_guides_guide_size = 1 " Indent guides

Plugin 'nathanaelkane/vim-indent-guides'
map <silent><F7> <leader>ig " indent guides shortcut

Plugin 'godlygeek/tabular' " Vim script for text filtering and alignment, try :helptags or :help tabular
Plugin 'plasticboy/vim-markdown' " Markdown Vim Mode http://plasticboy.com/markdown-vim-mode/

" A tree explorer plugin for vim. https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
map <silent><F8> :NERDTree<CR>

Plugin 'kchma/vim-coffee-script' " CoffeeScript support for vim
autocmd BufNewFile, BufRead *.coffee set filetype=coffee

Plugin 'slim-template/vim-slim.git' " Slim template support
autocmd BufNewFile, BufRead *.slim set filetype=slim " Hack filetype for slim

Plugin 'kien/ctrlp.vim' " Quickly search file(s), use ctrl+p, F5 refresh
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" let g:ctrlp_custom_ignore = '\v[\/] \.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn) | (optimized|compiled|node_modules)$' 
map <c-o> : CtrlPBuffer<CR>



" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'wincent/command-t'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" Plugin here for Ruby on Rails

" ruby command for rvm
Plugin 'tpope/vim-rvm'


Plugin 'JulesWang/css.vim' " Cutting-edge vim css syntax file
Plugin 'cakebaker/sass-syntax.vim' " Vim syntax file for scss (Sassy CSS)

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




" Use the Solarized Dark theme
set background=dark
colorscheme solarized

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
