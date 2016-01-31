set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let @a = "/&<CR>i<CR><Right><Right><Del><Right><Right><Esc>dtO"
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
execute pathogen#infect()
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

syntax enable
set background=dark
colorscheme solarized


 " Activate rope
 " Keys:
 " K             Show python docs
 " <Ctrl-Space>  Rope autocomplete
 " <Ctrl-c>g     Rope goto definition
 " <Ctrl-c>d     Rope show documentation
 " <Ctrl-c>f     Rope find occurrences
 " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
 " [[            Jump on previous class or function (normal, visual, operator
 "  modes)
 " ]]            Jump on next class or function (normal, visual, operator
 " modes)
 " [M            Jump on previous class or method (normal, visual, operator
 " modes)
 " ]M            Jump on next class or method (normal, visual, operator
 " modes)
 let g:pymode_rope = 1

 " Documentation
 let g:pymode_doc = 1
 let g:pymode_doc_key = 'K'

 "Linting
 let g:pymode_lint = 1
 let g:pymode_lint_checker = "pyflakes,pep8"
 " Auto check on save
 let g:pymode_lint_write = 1

 " Support virtualenv
 let g:pymode_virtualenv = 1

 " Enable breakpoints plugin
 let g:pymode_breakpoint = 1
 let g:pymode_breakpoint_bind = '<leader>b'

 " syntax highlighting
 let g:pymode_syntax = 1
 let g:pymode_syntax_all = 1
 let g:pymode_syntax_indent_errors = g:pymode_syntax_all
 let g:pymode_syntax_space_errors = g:pymode_syntax_all

 " Don't autofold code
 let g:pymode_folding = 0
