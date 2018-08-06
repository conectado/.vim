"Disable horrendous sound
set noerrorbells visualbell t_vb=

"Auto-save vimrc
augroup myvimrchooks
	au!
	autocmd bufwritepost .vimrc runtime ../.vimrc
augroup END

"Tab Definitions
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
"
