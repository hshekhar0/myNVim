" Basic Settings
set number                " Show line numbers
set relativenumber        " Show relative line numbers
syntax enable             " Enable syntax highlighting
set tabstop=4             " Set tab width
set shiftwidth=4          " Number of spaces for each indent level
set expandtab             " Convert tabs to spaces
set showmatch             " Highlight matching parentheses and brackets
set wrap                  " Enable line wrapping
set incsearch             " Highlight search as you type
set ignorecase            " Ignore case when searching
set smartcase             " Use case-sensitive search if uppercase is typed
set clipboard=unnamedplus " Enable system clipboard support
set ruler                 " Show the line and column numbers in the status line
set termguicolors         " Enable true color support (if terminal supports it)
set autoindent            " Enable auto-indentation
filetype plugin indent on " Enable filetype-specific settings
set scrolloff=8           " Keep 8 lines above/below the cursor when scrolling

" Set Leader Key
let mapleader = " "  " Use space as leader key

" Auto-reload files when changed outside of Neovim
set autoread
au FocusGained,BufEnter * checktime

" Search settings
set hlsearch              " Highlight search results
set wildmenu              " Enable command-line completion
set wildmode=longest:full,full

" Enable mouse support (if supported by terminal)
set mouse=a

" Plugin Manager Setup (using `vim-plug` for Neovim)
call plug#begin('~/.local/share/nvim/plugged')

" --- Plugins ---
" File navigation
Plug 'preservim/nerdtree'  " File explorer
Plug 'ctrlpvim/ctrlp.vim'   " Fuzzy file finder

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " CoC for auto-completion

" Linting and Formatting
Plug 'dense-analysis/ale'   " Asynchronous linting
Plug 'prettier/vim-prettier', { 'do': 'npm install' }  " Prettier for code formatting

" Git integration
Plug 'tpope/vim-fugitive'    " Git wrapper

" Snippets
Plug 'SirVer/ultisnips'     " Snippet engine
Plug 'honza/vim-snippets'   " Snippets collection

" Language Support
Plug 'sheerun/vim-polyglot' " Multi-language support

" Debugging (optional)
Plug 'puremourning/vimspector'  " Debugger integration (requires installation)

call plug#end()

" Key Mappings
" Save file
nnoremap <leader>w :w<CR>

" Quit Neovim
nnoremap <leader>q :q<CR>

" Save and quit
nnoremap <leader>wq :wq<CR>

" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Open terminal in Neovim (if supported)
nnoremap <leader>t :term<CR>

" Switch between open tabs
nnoremap <leader>h :tabnext<CR>
nnoremap <leader>l :tabprevious<CR>

" Additional Settings
" Enable line numbers and auto-indent
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
