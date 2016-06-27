set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Git
Plugin 'tpope/vim-fugitive'

" File Browser
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Quoting/Parenthesizing
Plugin 'tpope/vim-surround'

" Syntax Checking
Plugin 'scrooloose/syntastic'

" Fuzzy file search
Plugin 'kien/ctrlp.vim'

" Color scheme
Plugin 'altercation/vim-colors-solarized'

" Commenting
Plugin 'scrooloose/nerdcommenter'

" Ack/Ag text searches
Plugin 'mileszs/ack.vim'

" Language specific plugins
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rbenv'

Plugin 'slim-template/vim-slim'
Plugin 'suan/vim-instant-markdown'

" Recently edited files
Plugin 'buffergator'

" Whitespace Detection
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'git@github.com:jgdavey/tslime.vim.git'

" tmux integration
Plugin 'benmills/vimux'

" tmux rspec integration
Plugin 'skalnik/vim-vroom'

Plugin 'jgdavey/vim-turbux'

" es6 syntax highlighting
Plugin 'isRuslan/vim-es6'

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

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby'
let g:syntastic_ruby_mri_exec = '~/.rbenv/shims/ruby'

" ctrlp Settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)|(tmp|log|vendor|test_artifacts|vendor|results|bin)$',
			\ 'file': '\v\.(exe|so|dll|xls|xlsx|pdf|jpg|png|log)$'
			\ }

" Map to Leader + N
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup = 1
" Go to current file
nmap ,n :NERDTreeFind<CR>

" Solarized color settings
syntax enable
colorscheme solarized
set background=dark
"set background=light

colorscheme solarized

" Display line numbers
set number

" Display column line guide
set colorcolumn=120

" Fix path
set shell=/bin/bash

" Code Folding
set foldmethod=syntax
set foldlevelstart=20
set foldnestmax=5

" Sourced from vim tip: http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" Soft tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Enable backspace
set backspace=2

" Ack using Silversearcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Turbux Test runner
let g:turbux_command_prefix = 'spring'

" Stamp mode
nnoremap S "_diwP
Bundle 'wakatime/vim-wakatime'

" Additional file type mappings
if has("syntax")
  au BufNewFile,BufRead *.ngslim set filetype=slim
endif
