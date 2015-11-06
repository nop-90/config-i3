set completeopt=menu
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set fileformat=unix
set autoindent
set laststatus=2
set background=dark
set showcmd
:helptags $HOME/.config/nvim/doc
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=120
set number
set showmatch
set foldmethod=marker
set hlsearch
set mouse=a
set backup
set backupdir=$HOME/.config/nvim/backups
set history=1000
set undolevels=1000
set completeopt=menuone,menu,longest,preview
map <F7> :make<CR>
noremap <F6> :%!xxd<CR>
noremap <F8> :%!xxd -r<CR>
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin on
filetype plugin indent on
syntax on
