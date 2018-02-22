set nocompatible
syntax on
set wrap
set encoding=utf8

execute pathogen#infect()
syntax on
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>

" Vim-Airline Configuration
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1 
" let g:airline_theme='hybrid'
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1 
"
"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set ruler

" 256 col
set t_Co=256
let base16colorspace=256

" Toggle line numbers
set number
noremap <F2> :set invnumber<CR>
inoremap <F2> <C-O>:set invnumber<CR>
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Toggle :paste/:nopaste
set pastetoggle=<F3>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" toggle pastemode
"noremap <F5> :set paste<CR>
"inoremap <F5> <C-O>:set nopaste<CR>

" COLORSCHEME
"colorscheme Peacock

let php_minlines=2000
let php_no_short_tags = 1
"set bs=2
set smartindent shiftwidth=3
set tabstop=3
set expandtab
set ruler
set formatoptions=croq
set foldmethod=marker
"cmap w!! w !sudo tee > /dev/null %
au BufRead,BufNewFile *.khtml set filetype=php

"Close NerdTree and exit if it's the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Maps Alt-[h,j,k,l] to resizing a window split
"map <silent> <F3> <C-w><
"map <silent> <F5> <C-W>-
"map <silent> <F6> <C-W>+
"map <silent> <F4> <C-w>>
