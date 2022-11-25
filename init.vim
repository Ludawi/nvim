set nu! rnu!
set hlsearch

set clipboard=unnamedplus

syntax on
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set noerrorbells
set number
set smartcase

set list
set listchars=tab:➥\ ,trail:·
set mouse=a

set scrolloff=12

"----------------------------------------------------------------------------------
"   Keymaps
"----------------------------------------------------------------------------------

let mapleader = "\<space>"

" Open file in default program
nmap <leader>x :!xdg-open %<cr><cr>

" tab navigation

nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

"----------------------------------------------------------------------------------
"   autoclose brackets
"----------------------------------------------------------------------------------

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"----------------------------------------------------------------------------------
"   Plugins
"----------------------------------------------------------------------------------

"installs vim-plug if not installed

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"only sources no plugins
call plug#begin(data_dir . '/plugins')
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/themes.vim
source ~/.config/nvim/plugins/nerdtree.vim
call plug#end()
