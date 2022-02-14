call plug#begin()

" Declare the list of plugins.
Plug 'morhetz/gruvbox'
autocmd vimenter * ++nested colorscheme gruvbox
:set bg=dark

Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode

Plug 'tribela/vim-transparent'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.cocvimrc

" Syntal checking
Plug 'scrooloose/syntastic'

" File tree
Plug 'preservim/nerdtree'
nnoremap <leader>n :NERDTree<CR>

set mouse=nv


:nnoremap <A-Right> gt 
:nnoremap <A-Left> gT 
:nnoremap ; <C-w>
:nnoremap <leader>q :qa<CR>
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set runtimepath^=~/.vim/pack/git-plugins/start/

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
