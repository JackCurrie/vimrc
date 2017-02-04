""""""""""" VUNDLE STUFF 
"""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


" Basic functionality Plugins
Bundle "kien/ctrlp.vim"
Bundle "luochen1990/rainbow"

"JS plugins
Bundle "pangloss/vim-javascript"
Bundle "bigfish/vim-js-context-coloring"
Bundle "scrooloose/nerdtree"
Bundle "elzr/vim-json"
Bundle "mattn/emmet-vim"
Bundle "burnettk/vim-angular"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "itchyny/lightline.vim"


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




"""""""""""""""""""" OTHER STUFF 
"""""""""""""""""""""""""""""""""""""""""""

" Controls for split navigation
nnoremap <Tab> <c-w>w
nnoremap <bs> <c-w>W

" Flame ass colorscheme
set background=dark 
colorscheme elflord
syntax on

" Font
set guifont=Consolas:h11

" Display the line numbers
set number
set numberwidth=1

" folding Settings
set foldmethod=syntax
set foldmethod=manual

" Line Wrap settings
set nowrap

" Cursor highlighting settings
hi CursorLine   cterm=NONE ctermbg=darkred  guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline

""""""  NERDTree controls & defaults
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""""""""""""" For Syntastic. Revise after reading man if necessary
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]
let g:syntastic_html_checkers=['']

"""""""""""""""" Rainbow Parentheses
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

""""""""""""""" Optimizing Emmett
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

""""""""""""""" INDENT settings
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

""""""""" Paste better
set paste

