colorscheme flattened_light 

set background=light
" set termguicolors
set title
set number
set relativenumber
set ruler
" set list
set cursorline
set colorcolumn=80
set hidden
set bufhidden=hide
set noautowrite
set nowrap
set mouse=a

syntax on

" enable file type detection.
" load indent files, to automatically do language-dependent indenting.
if has("autocmd")
	filetype plugin indent on
endif

" jump to the last position when
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" buffer nav

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" window nav

nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k

" explorer settings

let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_dirhistmax=0
let g:netrw_list_hide='.*\.pyc$'

" disable arrow keys everywhere

" for k in [ '<Up>', '<Down>', '<Left>', '<Right>' ]
" 	execute 'map '.k.' <nop>'
" 	execute 'imap '.k.' <nop>'
" 	execute 'map <C-W>'.k.' <nop>'
" endfor

" funcs

fun! TrimWhitespace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfun

