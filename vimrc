" .vimrc
" Author: Eddie Antonio Santos <easantos>
" See also: .vim/after/plugins

" Vundle first -- Relying on sensible.vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Colour schemes
Bundle 'vim-scripts/desertEx'

" Languages
Bundle 'kchmck/vim-coffee-script'
Bundle 'jimmyhchan/dustjs.vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'oscarh/vimerl'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'jakar/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'tpope/vim-markdown'
Bundle 'derekwyatt/vim-scala'
Bundle 'wavded/vim-stylus'

" Tim Pope awesomeness.
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-surround'

" Other.
Bundle 'vim-scripts/a.vim'
Bundle 'ap/vim-css-color'
Bundle 'vim-scripts/jshint2.vim'
Bundle 'eddieantonio/vim-preserve'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'

" TEMPORARILY DISABLE PYLINT:
let g:syntastic_python_checkers=['python']
" And use Python 3!
let g:syntastic_python_python_exe = 'python3'

" Standard stuff.
syntax on
filetype plugin indent on

" Use my awesome colorscheme for 256 colors and GVim or whatever.
if &t_Co >= 256 || has("gui_running")
  colorscheme desertEx
endif

let mapleader=","

" Enable the dang mouse!
if has('mouse')
  set mouse=a
endif

" Uncomment the following to have Vim jump to the last position when
" " reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Wrapping junk:
set linebreak
set nowrap " Really hate wrapping.
set showbreak=»»»»
set wrapmargin=1 " We'll put a special UTF-8 character to signify long lines.
set listchars=tab:⇥·,trail:␣,eol:¶,extends:⇉,precedes:⇇,nbsp:·

" Searching stuff
set ignorecase
set smartcase
set hlsearch

" Visual bell, as opposed to annoying beeping
set visualbell

" Show a sweet title.
set title
set titleold=""

" Use OmniComplete
set omnifunc=syntaxcomplete

" SuperTab configuration.
let g:SuperTabDefaultCompletionType = 'context'
" Override 'insert previously insterted text and stop' for SuperTab
if !has("gui_running")
    imap <C-@> <C-Space>
endif
" Apparently I like Eclipse...
let g:SuperTabMappingForward = '<C-Space>'
let g:SuperTabClosePreviewOnPopupClose = 1

