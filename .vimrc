if &term == "alacritty"        
  let &term = "xterm-256color"
endif
set nocompatible              " be iMproved, required
set shell=/bin/bash
set t_Co=256
"
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Quramy/tsuquyomi'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}

" Languages
Plug 'jelera/vim-javascript-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'tfnico/vim-gradle'
Plug 'ron-rs/ron.vim'

" Themes
Plug 'dracula/vim'
Plug 'AlessandroYorba/Sierra'
Plug 'cocopon/iceberg.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'arcticicestudio/nord-vim'
Plug 'jdsimcoe/abstract.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'altercation/vim-colors-solarized'

call plug#end()

"Use every config file
runtime! ./config/*.vim
