"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

syntax enable
filetype plugin indent on
set autoindent
set smartindent
set lazyredraw
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set hidden
set signcolumn=yes:2
set relativenumber
set number
set undofile
"set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set foldcolumn=0
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set updatetime=80 "Reduce time for highlighting other references
set redrawtime=10000 "Allow more time for loading syntax on large files


"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

if has('win32')
    let $dir = '~/AppData/Local/nvim'
elseif has ('unix')
    let $dir = '~/.config/nvim'
endif


call plug#begin($dir . '/plugged')
  source $dir/plugged/dracula.vim
  source $dir/plugged/airline.vim
  source $dir/plugged/coc.vim
  source $dir/plugged/vim-jsx.vim
  source $dir/plugged/fugitive.vim
call plug#end()