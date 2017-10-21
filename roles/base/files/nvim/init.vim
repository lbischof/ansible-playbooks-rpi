set nowrap        " disable wrapping
set tabstop=4     " a tab is four spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab     " convert tabs to spaces
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set hidden        " allows switching modified buffers
set noshowmode    " hide mode because of lightline
set mouse-=a      " disable mouse
set undofile      " enable persistent undo
set undolevels=1000

autocmd! BufWritePre * :%s/\s\+$//e                " Remove trailing whitespace
set encoding=utf-8      " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Clear last search highlighting
noremap <silent> <Space> :noh<cr>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Load vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
    execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.github.com/
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'Raimondi/delimitMate'
" Replace and add brackets and quotes
Plug 'tpope/vim-surround'
" Align common seperators
Plug 'junegunn/vim-easy-align'
" Syntax highlight ansible playbooks
Plug 'pearofducks/ansible-vim', { 'for': 'ansible' }
" Puppet syntax highlighting
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
" Improved javascript indentation and syntax
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Enable repeating support for plugins
Plug 'tpope/vim-repeat'
" base16 colors
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" Must load after plugins: https://github.com/altercation/vim-colors-solarized/issues/104
set background=dark
colorscheme base16-eighties
highlight Search ctermbg=NONE ctermfg=NONE cterm=underline
