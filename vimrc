"==========================================================

" .vimrc inspired by Psyho(github.com/psyho), who was inspired by Peepcode screencast, Sickill and Derek Wyatt
"
"==========================================================

set nocompatible                  " Must come first because it changes other options.
filetype off                   " required!

" setup Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"----------------------------------------------------------
" PLUGINS
"----------------------------------------------------------

Bundle 'gmarik/vundle'

Bundle 'L9'
" succesor of Command-T pure fuzzy finding in vim-script
Bundle 'vim-scripts/ctrlp.vim'

" javascript indentation in vim sucks
"Bundle 'Better-Javascript-Indentation'

" JSON.vim - JSON syntax highlighting
Bundle 'JSON.vim'

" NerdCommenter - comment blocks of code
Bundle 'The-NERD-Commenter'

" NerdTree - displays a neat file explorer window
Bundle 'The-NERD-tree'

" ack - use ack to search through files
Bundle 'ack.vim'

" delimitMate - autoclosing of (", etc. that does not clash with endwise
Bundle 'delimitMate.vim'

" greplace.vim - plugin that allows search and replace across all of the project files
" Gsearch Greplace
"Bundle 'greplace.vim'

" jslint .js files automatically
Bundle 'jslint.vim'

" syntastic - plugin for displaying syntax errors
Bundle 'Syntastic'

" vim-endwise - wisely add 'end' in ruby
Bundle 'endwise.vim'

" vim-markdown - syntax highlighting for markdown
Bundle 'Markdown'

" vim-matchit - better pair matching for the % command
Bundle 'matchit.zip'

" git support
Bundle 'tpope/vim-fugitive'

" vim-rails - awesome vim-rails integration
Bundle 'tpope/vim-rails.git'

" vim-ruby - ruby integration
Bundle 'ruby.vim'

" vim-surround - surrounding text with braces, quotes, html tags...
Bundle 'surround.vim'

" vim-textobj - dependency of rubyblock
Bundle 'textobj-user'

" vim-textobj-rubyblock - allow selecting blocks in ruby as text objects
Bundle 'textobj-rubyblock'

" vim-zoomwin - when maximizing the window it is possible to un-maximize it
Bundle 'ZoomWin'

" zencoding-vim - plugin for expanding css-like syntax to html
Bundle 'ZenCoding.vim'

" VimWiki
Bundle 'vimwiki'

" SuperTab for autcompletion in insert mode
Bundle 'ervandew/supertab'

" '' to substitue word, or selection
Bundle 'https://github.com/aklt/vim-substitute.git'
let g:substitute_NoPromptMap = "''"
let g:substitute_PromptMap = "'l"

" To be aware where gem ctags are, and some other goodies
Bundle 'https://github.com/tpope/vim-bundler.git'

" CoffeeScript syntax
Bundle 'https://github.com/kchmck/vim-coffee-script'

" Tabular
Bundle 'https://github.com/godlygeek/tabular'

" Python
"Bundle "python.vim"

" Vitality restores the FocusLost and FocusGained autocommand functionality.
" Now Vim can save when iTerm 2 loses focus, even if it's inside tmux!
Bundle "sjl/vitality.vim"

" toggle between ruby blocks <leader>b
Bundle "https://github.com/jgdavey/vim-blockle.git"

Bundle 'jnwhiteh/vim-golang'

" vim and gpg
Bundle "jamessan/vim-gnupg"

" Indentation guides
Bundle 'https://github.com/nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

Bundle "bronson/vim-visual-star-search"

"A vim plugin for highlighting and indenting JST/EJS syntax
"Bundle "git://github.com/briancollins/vim-jst.git"

"lean & mean status/tabline for vim that's light as air
Bundle "bling/vim-airline"

Bundle "christoomey/vim-tmux-navigator"

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'

"Bundle "autoresize"

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set encoding=utf-8                " Default encoding

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set showbreak=...                 " Show break lines

set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

"set number                        " Show line numbers.
set relativenumber
set ruler                         " Show cursor position.

set history=1000                  " remember more commands and search history
set undolevels=1000               " use many muchos levels of undo

set virtualedit=block             " allow the cursor to go into invalid places only in visual block mode

" Display tabs and trailing spaces
set list
set listchars=tab:»\ ,trail:·,nbsp:·

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set splitbelow splitright         " Splitting behavior

set nobackup                      " Don't make a backup before overwriting a file.
set noswapfile                    " Don't keep swap files
set nowritebackup                 " And again.

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs
set shiftround                    " use multiple of shiftwidth when indenting with '<' and '>'
set laststatus=2                  " Show the status line all the time

set confirm                       " confirm on quit, etc.
set autoread                      " automatically read changes from disk

set diffopt+=iwhite               " ignore whitespace in vimdiff

"set matchpairs+=<:>               " add < and > to the chars thac can be navigated with %

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" semicolon instead of a colon for commands
"nnoremap ; :

let mapleader = ","

" j and k will navigate correctly in the wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap <space> :

" map .md files fo markdown
au BufNewFile,BufRead *.md set filetype=markdown

" map .prawn files fo ruby
au BufNewFile,BufRead *.prawn set filetype=ruby
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,coffee autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

au! BufRead,BufNewFile *.json setfiletype json
autocmd FileType json set equalprg=json_reformat

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" set some different setting for the diff mode
if &diff
  colorscheme fu_patched " different scheme
  set nonumber " no line numbers
endif

" NERDTree
"let NERDTreeShowHidden=1 
let g:NERDChristmasTree = 1
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes = ['eruby']

" zencoding-vim
let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1

map <silent> <F2> <ESC>:NERDTreeToggle<CR>

nmap <silent> <leader>ft :FufTag<cr>
nmap <silent> <leader>fb :FufBuffer<cr>

" a key mapping for running tests
"nmap <silent> <leader>r :Rake<cr>
"nmap <silent> <leader>rs :Rake spec<cr>

" regenarate tags and reload the list of files used by Command-T plugin

" unmap other ,g bindings
"nunmap <leader>ge
"nunmap <leader>gE

" ignore gems bundled in the project directory
set wildignore+=vendor/gems,vendor/bundle

cmap w!! w !sudo tee % >/dev/null " w!! lets you save files that you would have to use sudo vim to open

" Make>the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
"set cpoptions=ces$

" some plugin was overriding the redo command
nmap <silent> <c-r> :redo<cr>

"key mapping for saving file
nmap <C-s> :w<CR>
imap <C-s> <ESC>:w<CR><ESC>

"map leadder p to nerdtree
nmap <silent> <Leader>p :NERDTreeToggle<CR>

"Move line(s) of text down/up using Alt+j/k
nnoremap <silent> <A-j> :m+<CR>==
nnoremap <silent> <A-k> :m-2<CR>==
inoremap <silent> <A-j> <Esc>:m+<CR>==gi
inoremap <silent> <A-k> <Esc>:m-2<CR>==gi
vnoremap <silent> <A-j> :m'>+<CR>gv=gv
vnoremap <silent> <A-k> :m-2<CR>gv=gv

" Format all file
nmap <C-f> gg=<S-G>

" Make vimwiki have syntax highlither
let g:vimwiki_list = [{'html_header': '~/vimwiki_html/header.tpl'}]

" Open vimrc in a split
nmap <silent> <Leader>vim :e! ~/.vim/vimrc<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Set spell for english :setlocal spell spelllang=en_us
" How to use: z= ]s [s
nmap <silent> <Leader>sp :set spell<CR>

" Disable spell checker
nmap <silent> <Leader>nsp :set nospell<CR>

function! Wack(phrase)
  let p = a:phrase
  call Ack("--follow " . p .  " ~/vimwiki/*")
endfunction

command! -nargs=1 -complete=file Wack call Wack(<q-args>)
" Search Wiki
nmap <leader>wak :Wack<space>
" Open todos
nmap <Leader>td :e ~/Dropbox/vimwiki/ToDos.wiki <CR>
"  ---------------------------------------------------------------------------
"  Ruby/Rails
"  ---------------------------------------------------------------------------

" Edit routes
command! Rroutes :Redit config/routes.rb
command! RTroutes :RTedit config/routes.rb

" Edit factories
command! Rfactories :Redit spec/factories.rb
command! RTfactories :RTedit spec/factories.rb

" Execute current buffer as ruby
map <S-r> :w !ruby<CR>

nmap <leader>gs :CtrlP spec/<cr>
nmap <leader>gv :CtrlP app/views<cr>
nmap <leader>gc :CtrlP app/controllers<cr>
nmap <leader>gm :CtrlP app/models<cr>
nmap <leader>gh :CtrlP app/helpers<cr>
nmap <leader>gl :CtrlP lib<cr>
nmap <leader>ga :CtrlP app/assets<cr>
nmap <leader>ge :CtrlP engines/<cr>
nmap <leader>gf :CtrlP ./<cr>

let g:ctrlp_custom_ignore = 'vendor'

" View routes or Gemfile in large split
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>

" Skip to Models and Views
map <Leader>m :Rmodel
map <Leader>v :Rview

" open last closed window split
nmap <C-b> :vs<bar>:b#<CR>

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'

map <leader>a :Ack<space>

"~/tags/gems.tags
map ]t :tnext <CR>
map [t :tprev <CR>

" Command-t max height
let g:CommandTMaxHeight = 15

if exists('+colorcolumn')
  set colorcolumn=80
  hi ColorColumn guibg=#2d2d2d
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

augroup abbrevs
  au!

  " Ruby
  au Filetype ruby ia log/ Rails.logger.debug
  au Filetype ruby ia pry/ require 'pry'; binding.pry;
  au Filetype ruby ia pryd/ require 'pry-debugger'; binding.pry;
  au Filetype coffee ia log/ console.log 
  au Filetype ruby ia debug/ require 'ruby-debug'; debugger;

  au Filetype ruby ia desc/ describe "" do<CR><ESC>?""<ESC>a
  au Filetype ruby ia cont/ context "" do<CR><ESC>?""<ESC>a
  au Filetype ruby ia it/ it "" do<CR><ESC>?""<ESC>a
  au Filetype ruby ia sub/ subject do<CR><BS><SPACE>
  au Filetype ruby ia bef/ before do<CR><BS><SPACE>
  au Filetype ruby ia let/ let(:) { }<ESC>F:a

  " au Filetype ruby ia d/ do \|ppp\|<CR><ESC>?ppp<ESC>ciw

  " Coffee
  au Filetype coffee ia log/ console.log

  " Javascript
  au Filetype javascript ia log/ console.log()<left>
  au Filetype javascript ia f/ function() {<CR><BS><SPACE><CR>}<ESC>?{<CR>j$a
  au Filetype javascript ia f- function() { }<ESC>?{<ESC>a
augroup END

" Resizing vertical splits
map <right> <C-W>>
map <left>  <C-W><
map <up>    <C-W>+
map <down>  <C-W>-

map <leader>jf  <Esc>:%!python -m json.tool<CR>

colorscheme jellybeans

"map Esc to jj
imap jj <Esc>
imap jk <Esc>

" Save when losing focus
au FocusLost * :silent! wall

"let g:CommandTAcceptSelectionSplitMap=['<C-l>', '<C-k>']

"quite safe pasting from clipboard
map <C-b> <ESC>:set paste<CR>"*p:set nopaste<CR>
vnoremap <C-y> "*y<Esc>

" put in command line current file absolute path
cmap %% <C-R>=expand("%:p:h")<CR>

vnoremap . :norm.<CR>

nmap <leader>tn :tnext<CR>
nmap <leader>tp :tprev<CR>
" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

map <leader>e :w<CR>:!ruby %<CR>

vmap <leader>cp "*y
nmap <leader>cp :let @*=expand("%:p")<CR>

let &winwidth = &columns * 6 / 10
set pastetoggle=<F3> "toggle between :set paste and :set nopaste

function! SetWinWidht()
  let &winwidth = &columns * 6 / 10
endfunction

call SetWinWidht()
nmap <leader>r :call SetWinWidht()<CR>

nmap Q :echo "capital Q rescued, yay"<CR>

let g:rspec_command = 'call Send_to_Tmux("be rspec {spec}\n")'

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
