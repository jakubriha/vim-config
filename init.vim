" Setup dein  ---------------------------------------------------------------
if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Yggdroot/indentLine')
  call dein#add('vim-airline/vim-airline')
  call dein#add('mhartington/oceanic-next')
  call dein#add('Shougo/unite.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('neomake/neomake')
  call dein#add('neovimhaskell/haskell-vim')
  call dein#add('tpope/vim-surround')

call dein#end()

filetype plugin indent on

" Update packages by pressing \u.
nnoremap <silent> <leader>u :call dein#update()<CR>

" Toggle NERDTree.
map - :NERDTreeToggle<CR>

" Show hidden files in NERDTree.
let NERDTreeShowHidden=1

" Use true color in the terminal.
set termguicolors

" Show line cursor when in insert-mode.
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Use system clipboard instead of vim shit.
set clipboard+=unnamedplus

" Quickly edit/reload the init.vim file.
nmap <silent> <leader>e :e $MYVIMRC<CR>
nmap <silent> <leader>r :so $MYVIMRC<CR>

" Map ; to :.
nnoremap ; :

" Leave insert-mode by pressing jk.
:imap jk <Esc>

" Disable file swapping.
set noswapfile

" Navigate to other windows by pressing Alt key.
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" ------- Search

" Make searching case insensitive.
set ignorecase

" ... unless the query has capital letters.
set smartcase

" Use relative numbering.
set relativenumber

" ------- Formatting

" Show line numbers on the left side.
set number

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" Show always status line.
set laststatus=2

" One tab is 4 spaces.
set expandtab
set shiftwidth=4
set softtabstop=4

" Highlight current line.
:set cursorline

" Move easily to beginning/end of line.
noremap H ^
noremap L g_

" Move easily 5 lines up/down.
noremap J 5j
noremap K 5k

" Themes, Commands, etc  ----------------------------------------------------

" Current theme settings
syntax enable
colorscheme OceanicNext
set background=dark
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'

nnoremap <C-p> :Unite -start-insert buffer file<CR>

" Run Neomake on buffer save.
autocmd! BufWritePost * Neomake

" Haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`

