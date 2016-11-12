set ruler
set number
set relativenumber
set list

set cursorline
set colorcolumn=80

set hidden
set bufhidden=hide

set noautowrite
set nowrap

set termguicolors
set background=dark
colorscheme flattened_dark

" disable arrow keys everywhere

" for k in [ '<Up>', '<Down>', '<Left>', '<Right>' ]
" 	execute 'map '.k.' <nop>'
" 	execute 'imap '.k.' <nop>'
" 	execute 'map <C-W>'.k.' <nop>'
" endfor

" explorer settings

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_dirhistmax=0
let g:netrw_list_hide='.*\.pyc$'

" custom maps

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k


" funcs

fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun
