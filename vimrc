call plug#begin('~/.vim/plugged')
Plug 'aaronbieber/vim-quicktask'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'jgdavey/tslime.vim'
Plug 'janko-m/vim-test'
Plug 'andymass/vim-matchup'
Plug 'wellle/visual-split.vim'
Plug 'scrooloose/nerdtree'
Plug 'ruanyl/vim-fixmyjs'
Plug 'chrisbra/Colorizer'
Plug 'liuchengxu/vim-which-key'
Plug 'Asheq/close-buffers.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'kaicataldo/material.vim'
Plug 'luochen1990/rainbow'
Plug 'thoughtbot/vim-rspec'
Plug 'jgdavey/tslime.vim'
Plug 'brooth/far.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'ervandew/supertab'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-rooter'

Plug 'Yggdroot/indentLine'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/deleft.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'moznion/vim-ltsv'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-projectionist'
Plug 'mopp/autodirmake.vim'
Plug 'sbdchd/neoformat',  {'on': 'ToggleNeoformat'}
Plug 'Valloric/MatchTagAlways'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'craigemery/vim-autotag'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

Plug 'maxbrunsfeld/vim-yankstack'
Plug 'terryma/vim-expand-region'
Plug 'mhinz/vim-signify'
Plug 'farmergreg/vim-lastplace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-nginx'
Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'

Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'croaker/mustang-vim'
Plug 'morhetz/gruvbox'
Plug 'croaker/mustang-vim'
Plug 'tomasr/molokai'

Plug 'djoshea/vim-autoread'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'vim-ruby/vim-ruby'

Plug 'tomlion/vim-solidity'
Plug 'wesQ3/vim-windowswap'
Plug 'gcmt/taboo.vim'
Plug 'isRuslan/vim-es6'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'benmills/vimux'
Plug 'lambdalisue/gina.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'slim-template/vim-slim'
Plug 'junegunn/vim-plug'
Plug 'sickill/vim-pasta'

Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'adriaanzon/vim-textobj-matchit'

Plug 'rhysd/vim-textobj-anyblock'
Plug 'coderifous/textobj-word-column.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-line'
Plug 'jceb/vim-textobj-uri'
Plug 'kana/vim-textobj-datetime'
Plug 'deathlyfrantic/vim-textobj-blanklines'
Plug 'kana/vim-textobj-entire'
Plug 'vimtaku/vim-textobj-keyvalue'
Plug 'sgur/vim-textobj-parameter'
Plug 'ActivityWatch/aw-watcher-vim'

call plug#end()


""""""""""""""""
""" Settings """
""""""""""""""""
set rtp^=$HOME
set rtp+=~/dotfiles/vnote
set rtp+=~/dotfiles/vimloo

set exrc " execute vimrc in current directory
set secure " vimrc can execute only owner
set tags=./tags;
set tags+=gems.tags
set notagrelative " when on, the filenames are relative to the directory where the tags file is present
set ft=
set syn=

set notimeout
set ttimeoutlen=0
set encoding=UTF-8
set fileformat=unix
set signcolumn=yes
set guicursor=
let mapleader=','
set nuw=4
set mat=2
set scrolloff=3
set number
set cursorline
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set clipboard=unnamedplus
set backspace=indent,eol,start
set ttyfast
set lazyredraw
set nopaste
set autowrite     " Automatically :write before running commands
set autoread

" RegExp
set magic
nnoremap / /\v
cnoremap s/ s/\v

" Tabulation
set backspace=2   " Backspace deletes like most programs in insert mode
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab

syntax on

" Buffers
set hidden

" Code folding
set foldmethod=syntax
set foldnestmax=1          " deepest fold is 10 levels
set nofoldenable           " don't fold by default
set foldlevel=0

" Performance
syntax sync minlines=64
set nofoldenable
set lazyredraw
set ttyfast
set lazyredraw
set synmaxcol=150
set nocursorcolumn
set norelativenumber
set t_Co=256

set termguicolors
colorscheme onedark

filetype plugin on

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set nohlsearch              " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

" Use one space, not two, after punctuation.
set nojoinspaces

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

set list
set listchars=tab:»·,trail:·,nbsp:·" Display extra whitespace
set showbreak=↪"

inoremap jj <ESC>
cnoremap jj <C-c>
vnoremap v <ESC

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
noremap  <Up>    <NOP>
noremap  <Down>  <NOP>
noremap  <Left>  <NOP>
noremap  <Right> <NOP>

" Buffer switching
"
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>
noremap gS :SplitjoinSplit<cr>
noremap gJ :SplitjoinJoin<cr>

noremap gL :SidewaysRight<CR>
noremap gH :SidewaysLeft<CR>

noremap <leader>x :q!<CR>
noremap <leader>X :qa!<CR>

noremap <space>ch :Fchannel<CR>
noremap <space>cn :Fcontroller<CR>
noremap <space>fe :Ffrontend<CR>
noremap <space>hl :Fhelper<CR>
noremap <space>jb :Fjob<CR>
noremap <space>md :Fmodel<CR>
noremap <space>ml :Fmailer<CR>
noremap <space>pl :Fpolicy<CR>
noremap <space>sl :Fserializer<CR>
noremap <space>sv :Fservice<CR>
noremap <space>sw :Fswagger<CR>
noremap <space>up :Fuploader<CR>
noremap <space>vl :Fvalidator<CR>
noremap <space>vw :Fview<CR>

noremap <leader>tt <c-]><CR>
noremap <leader>tb g]<CR>
noremap <leader>tp :tprevious<CR>
noremap <leader>tg :!ctags . <CR>
noremap <leader>tb :TagbarToggle<CR>

noremap <leader>gwr :Gwrite<CR>
noremap <leader>grd :Gread<CR>
noremap <leader>ged :Gedit<CR>
noremap <leader>gds :Gsdiff<CR>
noremap <leader>gdv :Gvdiff<CR>
noremap <leader>gbl :Gblame<CR>
noremap <leader>grm :Gremove<CR>
noremap <leader>gdl :Gdelete<CR>
noremap <leader>gmv :Gmove<CR>
noremap <leader>gst :Gstatus<CR>
noremap <leader>gcm :Gcommit<CR>
noremap <leader>glg :Glog<CR>

noremap <leader>pi :so $MYVIMRC<CR>:PlugInstall!<CR>
noremap <leader>pc :so $MYVIMRC<CR>:PlugClean!<CR>
noremap <leader>rr :so $MYVIMRC<CR>

noremap <leader>ff :FzfFiles<CR>
noremap <leader>fr :FzfRg<CR>
noremap <leader>fa :FzfAg<CR>
noremap <leader>fgf :FzfGFiles<CR>
noremap <leader>fgsf :FzfGFiles?<CR>
noremap <leader>fbf :FzfBuffers<CR>
noremap <leader>ftg :FzfTags<CR>
noremap <leader>fbt :FzfBTags<CR>
noremap <leader>fln :FzfLines<CR>
noremap <leader>fbl :FzfBLines<CR>

noremap <leader>pa :let @+ = expand("%:p")<cr>
noremap <leader>pr :let @+ = @%<cr>
noremap <leader>s :silent write<cr>

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>"
noremap <F12>c :exe ':silent !google-chrome %'<CR>

noremap <F5> :Goyo<CR>
noremap <F6> :Limelight!!<CR>

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

noremap <leader>K gt
noremap <leader>J gT
noremap <leader>H  :-tabmove<cr>
noremap <leader>L :+tabmove<cr>

map <ESC>[5D <C-Left>
map <ESC>[5C <C-Right>
map! <ESC>[5D <C-Left>
map! <ESC>[5C <C-Right>

" resize current buffer by +/- 5
noremap <C-Right> :vertical resize -7<cr>
noremap <C-Left> :vertical resize +7<cr>

" moving up and down work as you would expect
noremap <silent> j gj
noremap <silent> k gk
noremap <silent> ^ g^
noremap <silent> $ g$

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"""""""""""""""
""" PLUGINS """
"""""""""""""""
let g:autotagCtagsCmd = "ctags"
let g:autotagTagsFile="tags"
let g:autotagDisabled=0

" Tabularise shortcuts
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'

  let g:airline_symbols.linenr = ''
  let g:airline_symbols.branch    = ''
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'
  let g:airline_symbols.readonly = ''

  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''

  let g:airline#extensions#branch#enabled=1
  let g:airline_highlighting_cache = 1
  let g:airline_skip_empty_sections = 1
  let g:airline_section_b = airline#section#create_left(['hunks'])
  let g:airline_section_z = "%p%% : %l/%L : %c"
  let g:airline_section_error = ''
  let g:airline_section_warning = ''
endif

" Fzf
let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" ALE
let b:ale_linters = ['eslint']
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_list_window_size = 5
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_lint_delay = 200
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 1
let g:ale_linter_aliases = {}
let g:ale_linters = {}
let g:ale_open_list = 0

let g:jsx_ext_required = 0

let g:mta_filetypes = { 
  \ 'javascript.jsx': 1 }

let g:gitgutter_map_keys = 0

let g:UltiSnipsSnippetsDir="/home/iwsyhgia/.vim/my-snippets"
let g:UltiSnipsSnippetDirectories=[g:UltiSnipsSnippetsDir]
let g:UltiSnipsExpandTrigger='<leader><tab>'
let g:UltiSnipsJumpForwardTrigger='<c-n>'
let g:UltiSnipsJumpBackwardTrigger='<c-p>'
let g:UltiSnipsEditSplit='vertical'

let g:multi_cursor_quit_key            = 'jj'
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

map <f3> :wa<cr>:call system('kill-pry-rescue')<cr>
map <Leader>bp orequire'pry';binding.pry<esc>:w<cr>
map <Leader><Leader>p <Leader>bp

" rspec mappings
let g:rspec_command = 'call VimuxRunCommand("rspec {spec}\n")'

let g:startify_change_to_vcs_root = 1

let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['seagreen3', 'darkorange3', 'violetred', 'skyblue3'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \	'operators': ''
	\}

map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
let g:asterisk#keeppos = 1

let g:netrw_keepdir = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'

" NERDTree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 35
let g:NERDTreeDirArrows = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeAutoDeleteBuffer = 1

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif

set guitablabel=%N/\ %t\ %M
let g:taboo_tab_format = "%N#%f%m  "

let g:tmux_navigator_disable_when_zoomed = 0
let g:VimuxHeight = '13'
let g:VimuxRunnerType = 'window'
let g:VimuxRunnerIndex = 6
let g:VimuxUseNearest = 1

map <Leader><Leader>L <Plug>(easymotion-bd-jk)

let test#ruby#rspec#executable = 'rspec'
let test#strategy = "neovim"
tmap <C-o> <C-\><C-n>
