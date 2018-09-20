"Disable horrendous sound
set noerrorbells visualbell t_vb=

"Auto-save vimrc
augroup myvimrchooks
	au!
	autocmd bufwritepost .vimrc runtime ../.vimrc
	autocmd bufwritepost ./**/* runtime ../.vimrc
augroup END

"Tab Definitions
set tabstop=2
set shiftwidth=2
set softtabstop=0 expandtab

"Search method
set ignorecase
set smartcase

" Code higlight
syntax on

" Backspace
set backspace=indent,eol,start " backspace over everything in insert mode
