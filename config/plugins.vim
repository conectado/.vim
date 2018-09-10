"Nerd Tree show hidden files
let NERDTreeShowHidden=1

"Open NERD Tree with shortcut
map <C-n> :NERDTreeToggle<CR>

"Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
