set nocompatible	" be iMproved, required
set mouse=a
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin for the custom colorscheme
Plugin 'sjl/badwolf'

" Plugin for Gundo
Plugin 'sjl/gundo.vim'

" Plugin for ag.vim
Plugin 'rking/ag.vim'

" Plugin for ctrlP
Plugin 'kien/ctrlp.vim'

" Plugin for html tag matching
Plugin 'valloric/MatchTagAlways'

" Plugin for the NERDtree
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" Plugin for airline tablines
Plugin 'vim-airline/vim-airline'

" Plugin for removing indentation weirdness with pasting into vim externally
Plugin 'ConradIrwin/vim-bracketed-paste'

" Plugin for syntax checking, known as Syntastic
Plugin 'vim-syntastic/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'

" Use eslint with syntastic
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exec= $HOME . './node_modules/.bin/eslint'

" Plugin for react-jsx syntax highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " Allow .js files to also have jsx syntax highlighting

" All Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required


" Colors
colorscheme badwolf " colorscheme Badwolf by Steve Losh

" Tabs and Spaces
syntax enable 		" enable syntax processing
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4 	" number of spaces in tab when editing
set expandtab		" insert four spaces where tabs are
set autoindent

" UI Config
set number		        " show line numbers
set showcmd		        " show command in bottom bar
set cursorline		    " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when necessary, and don't redraw during macros
set showmatch           " highlight matching for parentheses

" Search
set incsearch                                   " search as characters are entered
set hlsearch                                    " highlight matches
nnoremap <leader><space> :nohlsearch<CR>       

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" Movement
"
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" higlight last inserted text
nnoremap gV `[v`]

" Leader shortcuts
let mapleader=","   " leader is comma

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" edit vimrc/zhrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $VIMRC

" save session
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag

" Control P Settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -1 --nocolor --hidden -g ""'

