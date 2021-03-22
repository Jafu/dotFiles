" change swap files location
silent !mkdir ~/.config/nvim-tmp > /dev/null 2>&1
silent !mkdir ~/.config/nvim-tmp/.swap > /dev/null 2>&1
set directory=~/.config/nvim-tmp/.swap
silent !mkdir ~/.config/nvim-tmp/.backup > /dev/null 2>&1
set backupdir=~/.config/nvim-tmp/.backup
silent !mkdir ~/.config/nvim-tmp/.undo > /dev/null 2>&1
set undodir=~/.config/nvim-tmp/.undo

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
"
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" substitute line globally by default
set gdefault

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" set syntax on for vim in ui
syntax enable

" netrw explore/Vexplore/Sexplore
" preview vertically
let g:netrw_preview = 1
" preview vertically
let g:netrw_liststyle = 3
" get rid of netrw save confirmation on quit
autocmd FileType netrw setl bufhidden=delete

" Indentation settings for using hard tabs for indent.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" highlight cursor line on not insert mode
set cursorline
au InsertLeave * set cursorline
au InsertEnter * set nocursorline

" add max characters in line marker
set colorcolumn=90

" set system clipboard as default register
set clipboard=unnamedplus

" vimdiff
set diffopt=iwhite,vertical,filler

"------------------------------------------------------------
" Useful mappings
" Mappings
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" go to file under cursor in vertical split window
nnoremap  <leader>gf <C-w>f<C-w>H
" go to file and line under cursor in vertical split window
nnoremap  <leader>gF <C-w>F<C-w>H

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
nnoremap Y y$

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" Configuration to show whitespace characters
" enable
set list

"" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%*


" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
	\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
	\gvy/<C-R><C-R>=substitute(
	\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
	\gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
	\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
	\gvy?<C-R><C-R>=substitute(
	\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
	\gV:call setreg('"', old_reg, old_regtype)<CR>


"------------------------------------------------------------
" vim-plug configuration
"------------------------------------------------------------
call plug#begin('~/.config/nvim-plugged')

" Make sure you use single quotes

" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'

" Themes
Plug 'crusoexia/vim-monokai'
Plug 'w0ng/vim-hybrid'
Plug 'blockloop/vim-codeschool'
Plug 'Lokaltog/vim-distinguished'
Plug 'vim-scripts/BusyBee'
Plug 'altercation/vim-colors-solarized' "theme
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'

Plug 'godlygeek/tabular' " align inside text into column
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'wavded/vim-stylus'
Plug 'sirver/ultisnips' "snippets runner
Plug 'honza/vim-snippets' "snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'} "VS Code completion
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'


" Lint
Plug 'w0rp/ale'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'


Plug 'ElmCast/elm-vim'
"
" Appearance
Plug 'Raimondi/delimitMate' "auto close pairs
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-sensible' " add typical vim user defaults
Plug 'tpope/vim-unimpaired' " improved shortcut patterns from tpope	
Plug 'tpope/vim-surround' " surround stuff with {}[]() ad others
Plug 'tpope/vim-speeddating' " increase date fields, in such formats 2020-10-16, w/ <c-a>, <c-x>
Plug 'tpope/vim-repeat' " improve . with support for tpope plug-ins
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'

Plug 'blueyed/vim-diminactive'
Plug 'tmux-plugins/vim-tmux-focus-events' " support for tmux focus events (focus vim pane from other tmux pane), handy for git-gutter or fugitive updates
" Add plug-ins to &runtimepath
call plug#end()

source ~/.config/nvim/plugins/gitgutter.vim
source ~/.config/nvim/plugins/colorscheme.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/localvimrc.vim
source ~/.config/nvim/plugins/diminactive.vim
source ~/.config/nvim/plugins/ale.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/coc.vim
