set t_Co=16

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Bundle 'gmarik/vundle.vim'

" vim-snipmate dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-scripts/tlib'

Plugin 'ToadJamb/vim_test_runner'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-endwise'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/DeleteTrailingWhitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-markdown'
Plugin 'vim-scripts/Align'
Plugin 'ToadJamb/vim_alternate_file'
Plugin 'ToadJamb/vim_tab_number'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'vim-multiple-cursors'

call vundle#end()
filetype plugin indent on

" Plugin settings
let g:instant_markdown_autostart = 0

autocmd BufNewFile,BufRead Capfile setf ruby
autocmd BufNewFile,BufRead Gemfile setf ruby

" System-level settings
set noswapfile " Turn off the use of swap files - seems to use them anyway
"set dir=''     " Really turn off the use of swap files

" Behavior
set expandtab    " Expand tabs to spaces
set tabstop=2    " Set tabs to two spaces (No conversion - just display)
set shiftwidth=2 " Use 2 spaces when shifting with '>' or '<'
set ignorecase   " Ignore case in patterns.
set smartcase    " Case-sensitive matching for patterns with an uppercase letter
set backspace=2  " Make backspace/delete work in insert mode.
set showcmd      " Show current command

" Presentation - always visible
syntax on                   " Syntax highlighting
set number                  " Show line numbers in margin
set cursorline              " Highlight the line the cursor is on
set fillchars=stl:-,vert:\| " Set the characters used to fill borders

let &stl='%t %([%R%M]%) %L %l,%c ' " Status line format

" Presentation - conditional
set nowrap                   " Do not wrap text
set hlsearch                 " Highligh search text
set laststatus=2             " Always show the status bar
set listchars=trail::,tab:-> " How trailing spaces & tabs should be represented (tabstop matters for tab)
set list                     " Required in order for listchars to work

" Performance - Primarily for Ruby - Any file around 200 lines has a problem.
" Solution found here:
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
"set ttyfast    " When playing with these 3 options, this one seemed to have no effect.
"set re=1       " Use the old regex engine (default is 0).
set lazyredraw " Don't redraw the screen for every little thing.

" Features
set foldmethod=indent " Enable folding based on language syntax
set nofoldenable      " Open files with all folds expanded

" Toggle folding using the space bar.
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"vnoremap <Space> zf

" map leader to space bar
:let mapleader = "\<Space>"

" map write to leader w
nnoremap <Leader>w :w<CR>
" map quit to leader q
nnoremap <Leader>q :q<CR>

" Movement
nnoremap ; G
nnoremap <bs> gg

" paste and jump to bottom of insertion
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Enter clears highlighting
nnoremap <cr> :nohlsearch<cr>

" Open alternate files
command AF :execute OpenAlternateFile()
map <silent> <leader>s :call OpenAlternateFile() <CR>

" Run tests
map <silent> <leader>t :call TriggerTest()<CR>
map <silent> <leader>r :call TriggerPreviousTest()<CR>

" *** No Color Scheme ***

"hi! String ctermfg=00
"hi! LineNr ctermfg=04
"hi! CursorLine ctermfg=none ctermbg=07 cterm=none

" Increment/Decrement Numbers
nnoremap <C-s> <C-a>

" up and down swift movement
map <press Ctrl-V><A-j>10j<press Ctrl-V><press Enter>

" *** Miscellaneous ***

"let g:solarized_termcolors=16  " Local
"let g:solarized_termcolors=256 " Remote
"set background=light
color solarized
