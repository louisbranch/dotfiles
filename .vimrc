set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
filetype plugin on

setlocal spell

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

:let mapleader = ","              " Map leader to ,

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

set clipboard=unnamedplus         " Share system clipboard.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set nofoldenable                  " Disable folding

" Indentation Settings
set tabstop=2                    " Global tab width.
set softtabstop=2                " Global softtab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                 " Show the status line all the time

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

" Plugins
call plug#begin('~/.local/shared/nvim/plugged')

Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'raimondi/delimitMate'
"Plug 'scrooloose/syntastic'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"

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
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["haml", "go", "ruby"] }

" Vim Go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_template_autocreate = 0
let g:go_list_type = "quickfix"
let g:go_quickfix_height = 1

au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>r <Plug>(go-rename)
au FileType go nmap <leader>m <Plug>(go-metalinter)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>f <Plug>(go-test-func)
au FileType go nmap <leader>c <Plug>(go-coverlay)
au FileType go nmap <leader>C <Plug>(go-clearlay)
"au BufWritePost *.go :GoTest

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Base16 Theme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Wrap lines and spell check for markdown files
au BufRead,BufNewFile *.md setlocal textwidth=80 spell spelllang=en_us

" Ack - use Ripgrep instead
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif
