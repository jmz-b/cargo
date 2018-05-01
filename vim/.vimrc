"" editor setup ""

colorscheme flattened_light " solarized light like scheme

set background=light " try to use colors that look good on a light background
set showcmd          " show (partial) command in status line
set showmatch        " show matching brackets
set ignorecase       " do case insensitive matching
set smartcase        " do smart case matching
set incsearch        " incremental search
set noautowrite      " do not automatically save before commands like :next
set hidden           " hide buffers when they are abandoned
set bufhidden=hide   " hide buffers when they are hidden
set mouse=a          " enable mouse usage (all modes)
set title            " window will be set to the value of 'titlestring'
set number           " print line number in front of each line
set relativenumber   " number lines relative to the line the cursor is on
set ruler            " show the line and column number of the cursor position
set cursorline       " highlight the line the cursor is on
set colorcolumn=80   " highlight column 80
set hidden           " buffers becomes hidden when abandoned.
set nowrap           " lines longer than the width of the window won't wrap
set sidescroll=1     " scroll horizontally 1 column at a time

" strings to use in list mode (:set list)
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:›,precedes:‹

" enable file type detection, automatically do language-dependent indenting.
filetype plugin indent on

" automatically do language-dependent syntax highlighting
syntax enable

" jump to the last position when
au BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$")
	\ | exe "normal! g'\"" |
\ endif


" always open help files in a rightward vertical split 
au FileType help wincmd L

"" explorer setup ""

let g:netrw_liststyle=3          " tree style listing
let g:netrw_banner=0             " disable banner
let g:netrw_dirhistmax=0         " disable history
let g:netrw_browse_split = 4     " open files in previous window
let g:netrw_altv = 1             " open files in right split
let g:netrw_winsize = 20         " initial size of 20 columns
let g:netrw_list_hide='.*\.swp$' " hide swap files


"" helper functions ""

" toggle netrw explorer side bar
let g:NetrwIsOpen=0
function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
	else
		let g:NetrwIsOpen=1
		silent Lexplore
	endif
endfunction

" remove trailing whitespace
function! TrimWhitespace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfunction


"" key maps ""

" helper functions
nnoremap <F2> :call ToggleNetrw()<CR>
nnoremap <F3> :call TrimWhitespace()<CR>

" buffer nav
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" window nav
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
