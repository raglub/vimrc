"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""           Author:
""""                    Michał Szyma
""""
""""             Date:
""""                    05.12.2012
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" kursor jest oddalony od top and bottom since 10 lines
set scrolloff=10
set sidescrolloff=10

set nocompatible

set switchbuf=useopen
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

"Always show current position
set ruler

" Highlight search results
set hlsearch

" don't wrap lines
set nowrap

" Show a numers of lines
set number

" Set to auto read when a file is changed from the outside
set autoread

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


set laststatus=2
set statusline=%<%F%m%r%h%w\ \%n             "full path, modified flag
set statusline +=\ %=\[%{&ff}:%{&fenc}:%Y\]   "file format, codding, typ
set statusline+=%{&spelllang}\  "Spellanguage & Highlight on?
set statusline+=\ %03l/%L:\%03c\             "Rownumber/ colnr
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax " fold only one block (za)
"set foldcolumn=4
set foldlevel=5 "fold code nested in 5 level

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change tab into two spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set listchars=extends:>
set sidescroll=1

" Set a white charecters like tab and space·
set listchars=tab:>-,trail:·
set list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ghlight Normal guifg=White guibg=Black
map <F5> :NERDTreeTabsToggle<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => backups, undo and history
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set history=1000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme mustang

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai "Auto indent
set si "Smart indent
"set paste
set pastetoggle=<F7>
imap <C-S> :vimgrep/./ ./app/**/*
imap <A-s> :vimgrep/./ ./app/**/*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rest of settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hidden

"highlighter word row
syntax keyword comment def

"set novisualbell  " No blinking
"set noerrorbells  " No noise
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

"set showmatch  " Show matching brackets
set mat=5  " Bracket blinking

inoremap <F2> <c-n>

" spellcheck - command z=
map <F3> :setlocal spell spelllang=pl<CR>

" refresh setting :so %
map <F14> :so%<CR>

map <F8> :mksession! mysession.vim<CR>
" vim -S mysession.vim
map <F9> :source mysession.vim<CR>
map <F10> :FufFile<CR>
call pathogen#infect()
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
let g:SuperTabDefaultCompletionType = "context"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => install
"
" rails syntax, ruby syntax any ruby complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cd ~/.vim/bundle
" git clone git://github.com/tpope/vim-rails.git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cd ~/.vim/bundle
" git clone git://github.com/vim-ruby/vim-ruby.git
"MRU
"Matchit
"IndexedSearch
"vim-align
"vim-surround
"gist
"vim-cucumber
"vim-tcomment
"jquery
"vim-fugitive
"vim-vividchalk
"vim-git
"vim-ruby-debugger
"vim-shoulda
"textile.vim
