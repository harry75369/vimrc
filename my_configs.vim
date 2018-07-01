set nu
set stal=1
set mouse=a
set nofoldenable
set cmdheight=1
set tabstop=2
set shiftwidth=2
let g:NERDTreeWinPos = "left"
let g:NERDTreeQuitOnOpen=1
let g:gitgutter_enabled = 1
let g:airline_powerline_fonts = 1
autocmd FileType vue syntax sync fromstart
colorscheme wombat256mod
map <leader>gd :Gdiff<cr>
map <leader>gb :Gblame<cr>
map 0 0

" Show trailing whitespace
set list
" But only interesting whitespace
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Utility function to delete trailing white space
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

hi Normal ctermbg=none
hi NonText ctermbg=none
hi SpecialKey ctermbg=none
