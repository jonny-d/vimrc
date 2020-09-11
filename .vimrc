execute pathogen#infect()

" map the escape key to jk
inoremap jk <esc> 
" use ctrl-c to copy to system clipboard
nnoremap <C-c> "*y
vnoremap <C-c> "*y

" don't create .swp files
set noswapfile

colorscheme gruvbox

syntax on
filetype indent plugin on

" tab options
" set tabstop=4 "how many columuns are used to display a tab, still inserts a hard tab in file, this just affects how it is displayed 
" set expandtab "this tells vim to insert <softtabstop> spaces when the tab key is pressed in insert mode
" set softtabstop=4 "number of spaces which are inserted as explained on the above line
" set shiftwidth=4
" set autoindent
" if softabstop and noexpandtab are set, vim will insert a mixture of tabs and
" spaces to make up the sts value, for example, if ts=3 and sts=4 vim
" will insert one tab and one space. With expandtab set vim will just insert
" sts spaces. In both cases backspacing works as if you are deleting a tab
" which is sts wide. 

" folding options
set foldmethod=indent
set foldnestmax=10
set nofoldenable "stops a file from opening with folded
set foldlevel=4 "because the indentation is 4 spaces, we want to fold based on this

" options for line number on left hand side
set number "show absolute line numbers
" set relativenumber " don't use relative number by default
set cursorline "highlight current line

set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu

set nocompatible
set path+=**

set laststatus=2
set lazyredraw
set showmatch

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set bg=dark
hi! Normal ctermbg=NONE guibg=NONE

set statusline=%f         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines

set bs=2        " need this for backspace to work

" set swapfile
" set dir=~/tmp

" easily cycle through bufffers in normal mode
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

 " let g:syntastic_python_checkers = ['python3']

 " let vim_markdown_preview_github=1
 " let vim_markdown_preview_browser='Google Chrome'
 "
set mouse=a  " don't select line numbers when selecting text with mouse
vmap '' :w !pbcopy<CR><CR>

set clipboard+=unnamed  " use the clipboards of vim and win
" set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
