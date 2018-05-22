:set number
:set hlsearch

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'chiel92/vim-autoformat'
Plug 'google/vim-codefmt'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'rhysd/vim-clang-format'
Plug 'davidzchen/vim-bazel'
Plug 'valloric/youcompleteme'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
"Plug 'taketwo/vim-ros'
Plug 'eugen0329/vim-esearch'
Plug 'chazy/cscope_maps'
Plug 'daeyun/vim-matlab'
Plug 'vim-scripts/highlight_word_under_cursor.vim'
Plug 'mileszs/ack.vim'

" Initialize plugin system
call plug#end()

" NERDTree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowBookmarks=1
" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3

" Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_check_header=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Switch off all auto-indenting
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

" spell check
"set spell spelllang=en_us

" YouCompleteMe
set encoding=utf-8
let g:ycm_global_ycm_extra_conf = '/home/jingchi/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" cscope


"" The Silver Searcher
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"endif
"" bind K to grep word under cursor
"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"nnoremap \ :Ag<SPACE>

" Ack
nnoremap \ :Ack<SPACE>

" jcon file
autocmd BufRead,BufNewFile *.jcon set syntax=python 

set autoread

set tags=tags


