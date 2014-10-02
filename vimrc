" Use Vim settings, rather then Vi settings (be iMproved!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set modelines=0                     " For security reason :/

" ============================================================================
" Vundle
" ============================================================================

" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif


" ============================================================================
" Appearance
" ============================================================================

set t_Co=256
let g:solarized_termcolors=16
set background=dark
colorscheme solarized

set number
set numberwidth=5
set cursorline

" Status line
set laststatus=2
set showcmd
set showmode

" Scrolling
set scrolloff=3
set sidescrolloff=15
set sidescroll=1

" Display tabs and trailing spaces visually
set list listchars=tab:»·,trail:·


" ============================================================================
" Behavior
" ============================================================================

" Indentation
set tabstop=4                       " A real <TAB> width
set expandtab                       " Don't want a real <TAB>, just <space>s
set shiftwidth=4                    " Indentation width
set softtabstop=4                   " Deleting all the <space>s at once

" Be smart about tab and indent
set autoindent
set smartindent
set smarttab
set shiftround

" Wrapping
set textwidth=120
set formatoptions=qn1
set colorcolumn=+1,+2,+3            " Color 3 columns after textwidth
set showbreak=↪                    " Display line break visually
set linebreak                       " Wrap lines at convenient points

" Search
set incsearch                       " Show search matches as you type
set hlsearch                        " Highlight search terms
set ignorecase
set smartcase
set showmatch

" Use Perl-like regular-expressions
nnoremap / /\v
vnoremap / /\v

set autoread                        " Reload files changed outside vim
set encoding=utf-8                  " UTF-8 encoding
set backspace=indent,eol,start      " Allow backspace in insert mode
set history=1000                    " Store lots of :cmdline history

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

set ttimeoutlen=50                  " Timeout for keycodes
set ttyfast
set lazyredraw

set visualbell
set noerrorbells

" Completion
set wildmode=list:longest,full
set wildmenu

" Stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/tmp**
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Undo
silent !mkdir -p ~/.vim/tmp/undo > /dev/null 2>&1
set undolevels=1000
set undodir=~/.vim/tmp/undo
set undoreload=10000
set undofile

" Backup & Swap
silent !mkdir -p ~/.vim/tmp/backup > /dev/null 2>&1
silent !mkdir -p ~/.vim/tmp/swap > /dev/null 2>&1
set backupdir=~/.vim/tmp/backup
set directory=~/.vim/tmp/swap
set backup

" Folding
set foldmethod=indent               " Fold based on indent
set foldnestmax=3                   " Deepest fold is 3 levels
set nofoldenable                    " Don't fold by default

set splitbelow
set splitright

filetype plugin on
filetype indent on


" ============================================================================
" Plugins configuration
" ============================================================================

"
" matchit.vim
"
runtime macros/matchit.vim

"
" vim-airline
"
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.linenr = '⭡ '
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.readonly = '⭤'

let g:airline_theme='simple'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" ============================================================================
" Filetype-specific settings
" ============================================================================

augroup filetypes
  autocmd!
  autocmd Filetype ruby set tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype html set tabstop=2 shiftwidth=2 softtabstop=2 nowrap
augroup END


" ============================================================================
" Utils
" ============================================================================

" Remove any trailing whitespace that is in the file
augroup trailingspaces
  autocmd!
  autocmd BufWrite * if ! &bin | :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")')) | endif
augroup END

" Sudo to write
" w!! to write a file as sudo
cmap w!! w !sudo tee % >/dev/null

" Use Q to intelligently close a window
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction


" ============================================================================
" Key-mapping
" ============================================================================

let mapleader = ','

" Disable those arrow keys!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

" Make capitals behave
nnoremap D d$
nnoremap Y y$

" j/k movements over wrapped lines
noremap j gj
noremap k gk

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Easy window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>v <C-w>v

" Easy tab navigation
map <S-H> gT
map <S-L> gt

" Substitute
nnoremap <leader>x :%s//<left>

" Toggle search highlighting
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" Quickly move line up and down
nnoremap <D-j> :m+<CR>==
nnoremap <D-k> :m-2<CR>==
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv

" Quickly duplicate line
nnoremap <D-J> :t.<CR>==
nnoremap <D-K> :t-1<CR>==

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma. It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '

" Use Q to intelligently close a window
nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :tabe $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" ============================================================================
" Vim improvements for the Italian keyboard
" ============================================================================

nnoremap è [
nnoremap + ]
vnoremap è [
vnoremap + ]
nnoremap à %
vnoremap à %
nnoremap ò /
vnoremap ò /
