"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""           Author:
""""                    Michał Szyma
""""
""""             Date:
""""                    20.03.2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()

" VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" kursor jest oddalony od top and bottom since 10 lines
set scrolloff=10
set sidescrolloff=10

set nocompatible

set clipboard+=unnamed  " Yanks go on clipboard instead.
"set clipboard=unnamedplus " use the system clipboard for yank/put/delete
"set mouse=a " enable mouse for all modes settings
"set nomousehide " don't hide the mouse cursor while typing
"set mousemodel=popup " right-click pops up context menu
"set cursorline " highlight the current line
set switchbuf=useopen
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

"Always show current position in status bar
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
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8 " saving and encoding
" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nofoldenable
"set foldmethod=syntax " fold only one block (za)
"set foldcolumn=4
"set foldlevel=5 "fold code nested in 5 level

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
set laststatus=2
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
" => indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai "Auto indent
set si "Smart indent
"set paste
set pastetoggle=<F7>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rest of settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"don't unload buffer when switching away
set hidden

"highlighter word row
syntax keyword comment def

"set novisualbell  " No blinking
"set noerrorbells  " No noise
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

"set showmatch  " Show matching brackets
set mat=5  " Bracket blinking

highlight ColorColumn ctermbg=235 guibg=#2c2d27
set colorcolumn=80

"hi CursorLine term=none cterm=none guibg=#2c2d27
"set cursorline

inoremap <F2> <c-n>

" spellcheck - command z=
map <F3> :setlocal spell spelllang=pl<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin vim-surround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap s S

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F4> :GundoToggle<CR>
let g:gundo_width = 40
let g:gundo_preview_height = 15
let g:gundo_right = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "-"

imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ""<ESC>i

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Multicursor
nnoremap nn1:<c-u>call multicursorplacecursor()<cr>
nnoremap nn2 :<c-u>call MultiCursorManual()<cr>
nnoremap nn3 :<c-u>call MultiCursorRemoveCursors()<cr>
let g:multicursor_quit = "<C-c>"

" refresh setting :so %
map <F14> :so%<CR>

map <F8> :mksession! .session.vim<CR>
" vim -S mysession.vim
map <F9> :source .session.vim<CR>

map <F10> :FufFile **/<CR>
map <c-f> :FufCoverageFile<CR>
map <c-b> :vimgrep/./ ./app/**/*

"my helper
map <c-h> :sp ~/.vimrc<ENTER>

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
highlight Pmenu ctermbg=238 gui=bold
let g:SuperTabDefaultCompletionType = "context"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme mustang

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TAbline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("+showtabline")
 function MyTabLine()
     let s = ''
     let t = tabpagenr()
     let i = 1
     while i <= tabpagenr('$')
         let buflist = tabpagebuflist(i)
         let winnr = tabpagewinnr(i)
         let s .= '%' . i . 'T'
         let s .= "%*"
         let s .= ' ∙ '
         let s .= (i == t ? '%#TabLineSel#' : '%#TabLineFill#')
         let s .= i . ':'
         if len(buflist) > 1
           let file = bufname(buflist[1])
         else
           let file = bufname(buflist[winnr -1])
         endif

         let file = pathshorten(file)
         if file == ''
             let file = '[No Name]'
         endif
         let s .= file
         if getbufvar( file, "&modified" )
           let s .= "+"
         endif
         let i = i + 1
     endwhile
     let s .= '%T%#TabLineFill#%='
     let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
     return s
 endfunction
 "set stal=2
 set tabline=%!MyTabLine()
endif
hi TabLineSel ctermfg=white ctermbg=238 cterm=bold gui=bold
hi TabLineFill ctermfg=238 ctermbg=Gray
