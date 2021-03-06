"  _   __
" | | / /
" | |/ / _   _  ___ ____
" |    \| | | |/ _ \_  /  Author: Kyoz
" | |\  \ |_| | (_) / /   Github: github.com/banminkyoz
" \_| \_/\__, |\___/___|  Email : banminkyoz@gmail.com
"         __/ |
"        |___/

" DISPLAY {{{
set encoding=utf8
set nowrap "---------------------------------- do not automatically wrap on load
set colorcolumn=80 "---------------------------------------- 80 line column show
set nospell "-------------------------------------------------- Disable spelling
set formatoptions-=t "--------------- Do not automatically wrap text when typing
set listchars=tab:\|\ ,trail:▫
set formatoptions=tcqronj "-------------------- Set vims text formatting options
set title "-------------------------------------- Let vim set the terminal title
set updatetime=500 "-------------------------------- Redraw the status bar often
set list "--------------------------------------------- Show trailing whitespace
set listchars=tab:•\ ,trail:•,extends:»,precedes:« "-- Unprintable chars mapping
set showcmd	"--------------------------------------- Display incomplete commands
set termencoding=utf-8 "------------------------------------------- Always utf-8
set fileencoding=utf-8
set hid "---------------------------------- Buffer becomes hidden when abandoned
set shortmess+=c
set cmdheight=1 "--------------------------- Just need one line for command line
set laststatus=2 "-------------------------------------- Always show status line
set showtabline=2 "----------------------------------------- Always show tabline
set noshowmode "--------------------------- Hide default mode text (e.g. INSERT)
set display+=lastline "--------------------- As must as possible of the lastline
set previewheight=3 "------------------------------------ Smaller preview height
" }}}

" SYNTAX {{{
syntax on "---------------------------------------------- Enable Syntax for Code
syntax enable
set foldmethod=manual "---------------------------------- Support fold by indent
" }}}

" FILE, FILE'S TYPES {{{
set autoread "---------------------------------------- Auto reloaded Edited File
set noswapfile "------------------------------------------ Dont create wrap file
set nobackup "------------------------------------------------- Dont save backup
filetype plugin on "--------------------------------------------- Turn on plugin
let g:jsx_ext_required = 1 "------------------------- Dont detect js file as jsx
" }}}

" TYPINGS {{{
set backspace=indent,eol,start "----------------- Allow backspace in insert mode
" }}}

" TAB, INDENT {{{
set tabstop=2 "---------------------------------------------- 2 spaces for 1 tab
set softtabstop=2
set shiftwidth=2
set expandtab "------------------------------------------ Add tab in insert mode
set smarttab
filetype indent on "------------------------------------- Turn on default indent
set autoindent
set smartindent
" }}}

" SEARCH {{{
set hlsearch "------------------------------------------ Highlight search result
set incsearch "------------------------------------------ Allow Insert higtlight
" }}}

" FORMAT {{{
set nrformats-=octal "----------------------------------- Format number as octal
" }}}

" UNDO {{{
set undolevels=100 "------------------------------- Default is 1000 -> Too large
set undoreload=1000 "----------------------------- Default is 10000 -> Too large
set undodir=~/.config/nvim/undodir "--------------- Default folder for undo step
" }}}

" FOLD SETTINGS {{{
aug vim_folding
  au!
  au FileType vim setlocal foldmethod=marker
aug END
" }}}

" MAPPINGS {{{
let mapleader = "\<Space>" 
let maplocalleader = "\\"

" Use jk to exit insert mode instead of esc
inoremap jk <ESC>l

" Use black hole for delete. Don't want to store in register with dd.
" For cut, use visual and x instead
nnoremap d "_d
vnoremap d "_d

" Save and close current buffer
nnoremap <leader>z :wa<CR>:bd<CR>

" Buffer moving
nnoremap gB :bprevious <CR> 
nnoremap gb :bnext <CR>

" Disable Ctrl-Z
nnoremap <c-z> <NOP>

" Disable arrow keys (Vim don't need this)
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
" }}}
