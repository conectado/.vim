"Disable horrendous sound
set noerrorbells visualbell t_vb=

"Auto-save vimrc
augroup myvimrchooks
	au!
	autocmd bufwritepost .vimrc runtime ../.vimrc
	autocmd bufwritepost ./* runtime ../.vimrc
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

" Show line numbers
set number

" tpp is a cpp file
autocmd BufEnter *.tpp :setlocal filetype=cpp
autocmd BufEnter *.vert :setlocal filetype=c

" utf-8 enable
set encoding=utf-8

"xnoremap "+y y:call system("wl-copy", @")<cr>
vmap <silent> y y:call system("wl-copy", @@)<CR>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

augroup ProjectSetup
  au BufRead,BufEnter /home/conectado/Repos/joystream/* set tabstop=4 shiftwidth=4 softtabstop=0 expandtab colorcolumn=99
  au BufRead,BufEnter /home/conectado/Repos/branches/**/* set tabstop=4 shiftwidth=4 softtabstop=0 expandtab colorcolumn=99
  au BufRead,BufEnter /home/conectado/Repos/branches/**/* set tabstop=4 shiftwidth=4 softtabstop=0 expandtab colorcolumn=99
augroup END
