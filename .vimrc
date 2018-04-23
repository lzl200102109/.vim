:set number

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'chiel92/vim-autoformat'
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
Plug 'taketwo/vim-ros'
Plug 'eugen0329/vim-esearch'
Plug 'chazy/cscope_maps'
Plug 'daeyun/vim-matlab'

" Initialize plugin system
call plug#end()

" NERDTree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowBookmarks=1

" Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_check_header=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" spell check
set spell spelllang=en_us

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/zhilong/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" cscope


" jcon file
autocmd BufRead,BufNewFile *.jcon set syntax=python 

set tags=tags
