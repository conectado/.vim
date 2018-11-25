"Nerd Tree show hidden files
let NERDTreeShowHidden=1

"Open NERD Tree with shortcut
map <C-n> :NERDTreeToggle<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"Open NERD Tree on the file you're editing
nnoremap <silent> <Leader>n :NERDTreeFind<CR>

" ctrlp
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"fzf

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" Rust.vim
let g:rustfmt_autosave = 1
nnoremap <Leader>r :Cargo run

"Ale
let g:ale_max_signs = 10
let g:ale_virtualenv_dir_names = []

"YCM
let g:ycm_echo_current_diagnostic = 0
