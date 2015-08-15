set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
filetype plugin on

" Set Unicode
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif"

:let mapleader = ","              " Map leader to , (ABNT2 Keyboard)

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set relativenumber                " Show relative line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.
set noerrorbells                  " No beeping.

set clipboard=unnamed             " Share system clipboard.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set nofoldenable                  " Disable folding

" Indentation Settings
set tabstop=2                    " Global tab width.
set softtabstop=2                " Global softtab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time

" Xoria256 Color Theme
colorscheme xoria256

" 81 column highlight
set colorcolumn=81

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Swap colon and semicolon for easier commands
nnoremap ; :
nnoremap : ;

vnoremap ; :
vnoremap : ;

" Map to open files in the same directory as the current file
noremap <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Get rid of search hilighting with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Sudo save
cmap w!! w !sudo tee % >/dev/null

" Switch between absolute and relative numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Toggle Spellcheck
nnoremap <silent> <leader>ss :setlocal spell!<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'garbas/vim-snipmate'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'marcWeber/vim-addon-mw-utils'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitMate'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'

call plug#end()

let g:airline_theme="luna"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#fnamecollapse=1
let g:airline#extensions#tabline#show_tab_type=0
let g:airline_section_c=""
let g:airline_section_x=""
let g:airline_section_y=""
let g:airline_section_z=""
let g:airline_left_sep=''
let g:airline_right_sep=''

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'

" Vim Go
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>v <Plug>(go-vet)

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
