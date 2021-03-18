" change swp files location
set directory=~/.vim/.swap//
set backupdir=~/.vim/.backup//
set undodir=~/.vim/.undo//

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" substitude line globally by default
set gdefault

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" netrw explor/Vexplore/Sexplore
" preview vertically
let g:netrw_preview = 1
" preview vertically
let g:netrw_liststyle = 3



" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" highlight cursor line on not insert mode
set cursorline
au InsertLeave * set cursorline
au InsertEnter * set nocursorline

" add max charcters in line marker
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

" make word upercase
inoremap <c-u> <esc>viwUea


"" manage buffers
" close buffer but keep split window; works with syntastic
nnoremap <leader>bd :bp \| bd #<CR>
" goto next buffer
nnoremap <leader>bn :bn<CR>
" goto previous buffer
nnoremap <leader>bp :bp<CR>


" Find F I X M Es
nnoremap <leader>fx :vimgrep FIXME frontend/src/main/js/**/*.js


" Make ale work with coc
let g:ale_disable_lsp = 1


"------------------------------------------------------------
" vim-plug configuration
"------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Plug 'ctrlpvim/ctrlp.vim'
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
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'leshill/vim-json'
Plug 'wavded/vim-stylus'
" Plug 'crusoexia/vim-javascript-lib'
" Plug 'ervandew/supertab' "required for ycm and ultisnips integration
" Plug 'Valloric/YouCompleteMe' "intellisense
Plug 'sirver/ultisnips' "snippets runner
Plug 'honza/vim-snippets' "snippets
" Plug 'flowtype/vim-flow' "javascript flow
Plug 'neoclide/coc.nvim', {'branch': 'release'} "VS Code completion


" Lint
Plug 'w0rp/ale'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'


Plug 'ElmCast/elm-vim'
"
" Appearance
Plug 'benmills/vimux' "tmux intergration
Plug 'mileszs/ack.vim'
Plug 'Raimondi/delimitMate' "autoclose pairs
Plug 'embear/vim-localvimrc'
Plug 'tpope/vim-sensible' " add typical vim user defaults
Plug 'tpope/vim-unimpaired' " improved shortcut patterns from tpope	
Plug 'tpope/vim-surround' " suround stuff with {}[]() ad others
Plug 'tpope/vim-speeddating' " increase date fields, in such formats 2020-10-16, w/ <c-a>, <c-x>
Plug 'tpope/vim-repeat' " improve . with support for tpope plugins
Plug 'vim-airline/vim-airline'

Plug 'blueyed/vim-diminactive'
Plug 'tmux-plugins/vim-tmux-focus-events'
" Add plugins to &runtimepath
call plug#end()


" Config to show whitespace characters
" enable
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:»\ ,eol:¬
			
" change colors of whitelabel chars
" if !has("gui_running")
" "	autocmd ColorScheme * highlight NonText ctermfg=237
" "	autocmd ColorScheme * highlight SpecialKey ctermfg=237
" "else
" "	autocmd ColorScheme * highlight NonText guifg=#575b61
" "	autocmd ColorScheme * highlight SpecialKey guifg=#575b61
" "endif

" vim gitgutter
let g:gitgutter_max_signs = 10000

"
" vim-signify
" let g:signify_realtime = 1 // Caution will autowrite files
" set updatetime=1000

" Plugin vim-jsx
let g:jsx_ext_required = 0

" Enable syntax highlighting
syntax on
syntax enable
colorscheme onedark
set background=dark
" colorscheme solarized
set t_Co=256
" let g:monokai_term_italic = 1
" let g:monokai_gui_italic = 1


"" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%*

""""""""""""""""""""""""""""""
" fzf options
nnoremap <C-p> :Files<CR>
nnoremap <C-t> :BLines<CR>
" CTRL-A CTRL-Q to select all and build quickfix list

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'


""""""""""""""""""""""""""""""
" YouCompleteMNe
let g:is_show_argument_hints_enabled = 1
autocmd FileType javascript setlocal omnifunc=tern#Complete


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

" get rid of netrw save confirmation on quit
autocmd FileType netrw setl bufhidden=delete

" airline config: Mode indicator
let g:airline_mode_map = {
	\'c': 'COMMAND',
	\'^S': 'S-BLOCK',
	\'R': 'REPLACE',
	\'s': 'SELECT',
	\'t': 'TERMINAL',
	\'V': 'V-LINE',
	\'^V': 'V-BLOCK',
	\'i': 'INSERT',
	\'__': '------',
	\'S': 'S-LINE',
	\'v': 'VISUAL',
	\'n': 'N'
\}

" airline config: dont show expected string
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" airline config: cursor position
let g:airline_section_z = "%l:%v[%L]"

" airline config: truncate branchname
let g:airline#extensions#branch#displayed_head_limit = 6
let g:airline#extensions#hunks#non_zero_only = 1

" local vimrc whitelist: do not ask
let g:localvimrc_whitelist=['/home/jakob/repos/*']
let g:localvimrc_sandbox = 0

" diminactive plugin
let g:diminactive_enable_focus = 1


" vim-flow
let g:flow#enable = 0

" ale
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'html': [ 'prettier' ],
\ 'css': [ 'prettier' ],
\ }

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'html': [ 'prettier' ],
\ 'css': [ 'prettier' ],
\ }
nnoremap <leader>e :ALENext<CR>
nnoremap <leader>E :ALEPrevious<CR>
highlight ALEWarning ctermbg=none
highlight ALEError ctermbg=none
" fugitive
" autoclose buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

"" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
"" (via http://stackoverflow.com/a/22253548/1626737)
"let g:SuperTabDefaultCompletionType    = '<C-n>'
"let g:SuperTabCrMapping                = 0
"let g:UltiSnipsExpandTrigger           = '<tab>'
"let g:UltiSnipsJumpForwardTrigger      = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
"let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

source ~/.config/nvim/plugins/coc.vim
