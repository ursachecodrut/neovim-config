""--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

syntax enable
filetype plugin indent on
set autoindent
set smartindent
set lazyredraw
set expandtab
set shiftwidth=4
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
set splitright
set splitbelow



"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

" Quicky escape to normal mode
imap jj <esc>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

if has('win32')
    let $dir = '~/AppData/Local/nvim'
elseif has ('unix')
    let $dir = '~/.config/nvim'
endif


call plug#begin($dir . '/after')
" source $dir/plugged/nord.vim
" source $dir/plugged/dracula.vim
  source $dir/plugged/onedark.vim
  source $dir/plugged/airline.vim
  source $dir/plugged/coc.vim
  source $dir/plugged/vim-jsx.vim
  source $dir/plugged/fugitive.vim
  source $dir/plugged/fzf.vim
  "source $dir/plugged/clang-complete.vim
call plug#end()


"--------------------------------------------------------------------------
" Color Scheme
"--------------------------------------------------------------------------
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
   set termguicolors
endif


colorscheme onedark
