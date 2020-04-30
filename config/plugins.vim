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
command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \   'ack .',
  \   1, <bang>0)

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" Rust.vim
let g:rustfmt_autosave = 1
let g:rustfmt_options = '--edition 2018'
nnoremap <Leader>r :Cargo run

"Ale
let g:ale_max_signs = 10
let g:ale_virtualenv_dir_names = []

"YCM
let g:ycm_echo_current_diagnostic = 0
let g:ycm_rust_src_path = "/home/conectado/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src" 
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
nnoremap gt :YcmCompleter GoTo<CR>
nnoremap ft :YcmCompleter Format<CR>
nnoremap rn :YcmCompleter RefactorRename 
nnoremap qt :YcmCompleter GetType<CR>
