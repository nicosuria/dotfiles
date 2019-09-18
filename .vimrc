" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Solarized Theme
set background=dark
colorscheme solarized

" Map Spacebar as Leader key
map <Space> <Leader>

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" Plugins are declared here c/o vim-plug.
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'bbatsov/rubocop'
Plug 'godlygeek/tabular'
Plug 'jgdavey/tslime.vim'
Plug 'vim-airline/vim-airline'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rails'
"Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-surround'
Plug 'janko-m/vim-test'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

call plug#end()

" Ack.vim
" Use the_silver_searcher to power search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Do no open the first Ack file match automatically
cnoreabbrev Ack Ack!

" | CTRLP |
let g:ctrlp_map = '<Leader><Space>'
let g:ctrlp_working_path_mode = '0'

" nerdtree
autocmd StdinReadPre * let s:std_in=1

" Map NerdTree shortcut
map <Leader>n :NERDTreeToggle<CR>

" Go to current file
nmap ,n :NERDTreeFind<CR>
let g:NERDTreeChDirMode = 2

" vim-test
  " these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" make test commands execute using dispatch.vim
let test#strategy = "tslime"
let g:test#preserve_screen = 1
let test#ruby#rspec#executable = 'bin/rails test'

" Tslime
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" vim-ruby
"let ruby_fold = 0
"let ruby_space_errors = 0
"let ruby_foldable_groups = 'def case'
"let ruby_fold_lines_limit = 200

" Globals
set number
set wildignore+=*/tmp/*,*.cache

" ctrl + j OR ctrl + k to move a line down or up respectively.
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

"Uncomment to override defaults:
let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 1
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
