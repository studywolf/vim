execute pathogen#infect()
filetype plugin indent on
set sessionoptions-=options

set background=dark
colorscheme desert256

set number
set nospell
set nowrap

set hlsearch
set incsearch

set tabstop=4
set shiftwidth=4
set softtabstop=4

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set ruler
set showmatch

" map cut and paste to what they should be
vnoremap <C-c> "+y
vnoremap <C-x> "+x
map <C-v> "+gP

syntax on

"highlight OverLength ctermbg=red ctermfg=white guibg=#b2182d
"#match Error /\%81v.\+/

"Use TAB to complete when typing words, else inserts TABs as usual.
"Uses dictionary and source files to find matching words to complete.

"See help completion for source,
"Note: usual completion is on <c-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
"Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\</c-n><c-n>"
  else
                                return "\<tab>"
  endif
endfunction
:inoremap </tab><tab> <c-r>=Tab_Or_Complete()<cr>
"

set expandtab

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" let g:rehash256 = 1
nnoremap <F5> :GundoToggle<CR>

" " Bubble single lines
" nmap <A-Up> [e
" nmap <A-Down> ]e
" " Bubble multiple lines
" vmap <A-Up> [egv
" vmap <A-Down> ]egv

set autochdir

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81, 200), ",")

set undodir=~/.vim/undodir
set undofile

set relativenumber
