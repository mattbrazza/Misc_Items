" VIM Customizations

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim',{'as':'dracula'}
Plug 'pangloss/vim-javascript', {'for':'javascript'}
Plug 'potatoesmaster/i3-vim-syntax', {'for':'i3'}
"Plug 'vimwiki/vimwiki'
call plug#end()

" Some tricks
" double tap q to get back to Normal Mode from Insert Mode
inoremap qq <ESC>

" Colors
syntax on             " enable syntax highlighting
colorscheme dracula
"colorscheme badwolf

" General features
filetype plugin on    " ??
set nocompatible      " won't be compatible with Vi - use Vim's op-cmds
set wildmode=longest,list,full    " enable autocompletion
autocmd BufWritePre * %s/\s\+$//e " removes trailing whitespaces on save
set noerrorbells      " no noise/bell when an error occurs
set novisualbell      " no visual cue (screen flicker) when error occurs

" Fixing Copy-Paste issues
vnoremap <C-c> "*Y : let @+=@*<CR>
map <C-p> "+P
set clipboard=unnamed " use OS Clipboard

" Tabs, spaces, line info
"set autoindent        " new lines indent to match previous
"filetype indent on    " indent specific to file extensions (like for .py files)
set tabstop=2         " number of visual spaces per <tab>
set softtabstop=2     " number of spaces in <tab> while editing
set shiftwidth=2      " number of spaces when shift indenting
set expandtab         " automatically turns <tab> into spaces
"set textwidth=80      " how many characters to display on a single line
"set wrap              " wrap lines
"set linebreak         " linebreaking only occurs at space, hyphen, etc.
"set wrapmargin=2      " number of characters between linebreak and window edge
"set scrolloff=5       " number of lines from cursor to top/bottom when scrolling
"set sidescrolloff=15  " number of characters from cursor to start/end when scrolling
"set laststatus=2      " status bar display (0=no, 1=only in multi-window, 2=always)

" UI layout stuff
set number            " show line numbers
set relativenumber    " line numbers are relative to current line
set cursorline        " highlight current line
set showmode          " show current mode at bottom
set showcmd           " show current command at bottom
set ruler             " display cursor row/column location in status bar

" Searching stuff
set showmatch         " highlight corresponding parenthesis, bracket, brace, etc.
set hlsearch          " highlight the match when searching
"set incsearch         " automatically jump to results while matching
set ignorecase        " ignore case while searching
set smartcase         " with ignorecase, will be case sensitive when start with capital

" Fix-up for Spliting
set splitbelow splitright  " splits down/right, not left/up
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Misc. from internet
"set hidden
"set backspace=indent,eol,start

" Turn Vim into an IDE
"inoremap <Space><Space> <Esc>/<``><Enter>"_c4l
"autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i

