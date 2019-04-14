" USE MONOSPACE REGULAR FOR FONT 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

set diffexpr=MyDiff()
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" let g:airline#extensions#tabline#enabled=1
let g:solarized_termtrans=1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Bundles
Plugin 'mattn/emmet-vim' " CSS HTML AUTOCOMPLETE
let g:user_emmet_leader_key=','
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-sleuth'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
Plugin 'scrooloose/nerdtree'
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowHidden=1
let g:netrw_liststyle=3
let NERDTreeMapOpenInTab='<ENTER>'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
Plugin 'vim-syntastic/syntastic'

" SETS
set nu
set autoindent
set noerrorbells
set nohlsearch
set guioptions-=m
set guioptions-=T
set guioptions-=L
set shortmess=I
filetype off
set number
set relativenumber
set smarttab
set splitbelow
set splitright
set clipboard=unnamed
set laststatus=2
set scrolloff=5
set t_Co=256
set mouse=n
set shiftwidth=2
set softtabstop=2

" COLOR COLUMN
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn','\%81v',100)
highligh Pmenu ctermfg=15 ctermbg=208

" CHANGE KEYS
nnoremap ; : 
nnoremap : ;
inoremap jh <Esc>
