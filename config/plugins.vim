"Nerd Tree show hidden files
let NERDTreeShowHidden=1

"Open NERD Tree with shortcut
map <C-e> :NERDTreeToggle<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"Open NERD Tree on the file you're editing
nnoremap <S-e> :NERDTreeFind<CR>

" Airline
let g:airline_powerline_fonts = 1

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
nnoremap <Leader>r :Cargo run

" Editorconfig
Plug 'editorconfig/editorconfig-vim'
