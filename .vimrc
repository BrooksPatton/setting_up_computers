" If vim plug isn't installed, install it
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim Plug plugins
call plug#begin('~/.vim/plugged')

" general
Plug 'tpope/vim-sensible'

" Themes
Plug 'romainl/Apprentice'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'

" devicons fonts, must be last
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

" Set the background to dark mode
set background=dark

" Stop comments on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set the colorscheme
colorscheme apprentice

" starting auto indent guides on start
let g:indent_guides_enable_on_vim_startup = 1

" tab setup
set tabstop=4

" start nerdtree if opening with nothing at all
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" start nerdtree if opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" shortcut to open nerdtree
map <C-b> :NERDTreeToggle<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" custom location for snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
