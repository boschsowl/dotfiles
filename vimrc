" Set compatibility to Vim only.
set nocompatible

" 2-space tab
set shiftwidth=2 softtabstop=2 tabstop=2

" tabs are spaces
set expandtab

" show line numbers
set number

" show line number and column"
set ruler

" Automatically wrap text that extends beyond the screen length.
set wrap

" prevent words from being split across 2 lines
set linebreak

" use colors that look good on a dark background
set background=dark 

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" highlight matches
set hlsearch

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5

" Show (partial) command in status line.
set showcmd

" save your history and undo changes even after a reboot
set undofile

" make backspace work like most other programs
set backspace=2


set t_Co=256

" Turn on syntax highlighting.
syntax on

" set up vundle
filetype off " Helps force plug-ins to load correctly when it is turned back on below.
set rtp+=$HOME/.vim/bundle/vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'gregsexton/MatchTag'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'quanganhdo/grb256'
call vundle#end()

colorscheme grb256
filetype plugin indent on

" don't search these directories with ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|_build'
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" enable scrolling in xterm
"set mouse=a
"vnoremap <C-c> "+y<CR>
"map <C-a> ggVG

" dark grey line numbers
highlight LineNr ctermfg=DarkGrey

" start editing with correct syntax highlighting
"autocmd BufEnter *.html :syntax sync fromstart

" yank to and put from system clipboard
set clipboard=unnamed

" unix line endings for a Windows environment
"set ffs=unix,dos

" disable Ex mode
map Q <Nop>

" allow . to operate on each line of a visual block
"vnoremap . :normal .<CR>
"vnoremap @q :normal@q<CR>
"vnoremap <leader>4 :normal <leader>4<CR>
"vnoremap <leader>5 :normal <leader>5<CR>

" Press space to clear search highlighting and any message already displayed
"nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" allow :W to work like :w
"cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Jump to the last position whenreopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"  \| exe "normal! g'\"" | endif
"endif

" Write read-only files with :sudow
"cnoremap sudow w !sudo tee % >/dev/null

" Shortcut to strip trailing whitespace
"nnoremap <leader>s :%s/\s\+$//e<CR>

""" Leader key commands
" Markdown headers
"nnoremap <leader>1 yypVr=
"nnoremap <leader>2 yypVr-
" Top + bottom CSS comment wrapping
"nnoremap <leader>3 YPVr*0r/$r/Yjp
" Wrap/unwrap a C-style comment
"nnoremap <leader>4 I/* <Esc> A */<Esc>
"nnoremap <leader>5 _3x$xxx
" django template block
"nnoremap <leader>6 I{% <Esc> A %}<Esc>
" Javascript debug
"nnoremap <leader>9 oconsole.log();<Esc>hi
" Shorten a sentence from the beginning by a word
"nnoremap <leader>0 dw~b
" Format json
"nnoremap <leader>j :%!python -m json.tool<CR>
