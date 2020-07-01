set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"source ~/themes/
set t_Co=256
set t_ut=

set colorcolumn=128
highlight ColorColumn ctermbg=darkgray

"colorscheme hybrid-material

filetype plugin on
syntax on
set autoindent
set cindent

set mouse=a " включает поддержку мыши при работе в терминале (без GUI)
set mousehide " скрывать мышь в режиме ввода текста
set showcmd   " показывать незавершенные команды в статусбаре (автодополнение ввода)
set number    " номера строк
set wrap " (no)wrap - динамический (не)перенос длинных строк
set linebreak " переносить целые слова
set showmatch " показывать первую парную скобку после ввода второй


" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

filetype off                  " required


call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'airblade/vim-rooter'
Plug 'bogado/file-line'
Plug 'chazy/cscope_maps'
Plug 'jacoborus/tender.vim'
Plug 'juneedahamed/vc.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvie/vim-flake8'
Plug 'relastle/bluewery.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" For coc.nvim
set updatetime=300
set cmdheight=1

" set the runtime path to include Vundle and initialize

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
" PluginInstall 'ycm-core/YouCompleteMe'

"let g:ycm_use_clangd = 0

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

:set backspace=indent,eol,start

" For colorscheme. If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

colorscheme tender
"colorscheme hybrid_material

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
