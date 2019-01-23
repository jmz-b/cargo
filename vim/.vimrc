"" editor setup ""

set rtp+=~/.fzf " fzf plugin

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
set laststatus=2
set wildchar=<Tab>
set wildcharm=<C-Z>
set wildmenu
set wildmode=full

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

" remove trailing whitespace
function! TrimWhitespace()
	let l:save_cursor = getpos('.')
	%s/\s\+$//e
	call setpos('.', l:save_cursor)
endfunction
