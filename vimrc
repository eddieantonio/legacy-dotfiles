" .vimrc
" Author: Eddie Antonio Santos <easantos>
" See also: .vim/after/plugins

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8


" Vundle first -- Relying on sensible.vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Colour schemes
Bundle 'vim-scripts/desertEx'

" Languages
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jimmyhchan/dustjs.vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'jimenezrick/vimerl'
Bundle 'othree/html5.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'jakar/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'mintplant/vim-literate-coffeescript'
Bundle 'plasticboy/vim-markdown'
Bundle 'alunny/pegjs-vim'
Bundle 'rodjek/vim-puppet'
Bundle 'derekwyatt/vim-sbt'
Bundle 'derekwyatt/vim-scala'
Bundle 'wavded/vim-stylus'

" Tim Pope awesomeness.
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'


" Other.
Bundle 'vim-scripts/a.vim'
Bundle 'ap/vim-css-color'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
Bundle 'eddieantonio/vim-preserve'
Bundle 'tristen/vim-sparkup'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/taglist.vim'
Bundle 'wakatime/vim-wakatime'

"
" Syntastic

" Disable pylint -- Will use Dispatch to lint instead.
let g:syntastic_python_checkers=['python']
" And use Python 3!
"let g:syntastic_python_python_exe = 'python'

" Don't check for Scala.
let g:syntastic_scala_checkers=[]

" Use clang -fsyntax-only
let g:syntastic_cpp_compiler = 'c++'
let g:syntastic_cpp_compiler_options="-fsyntax-only -std=c++0x"

" Why wouldn't you enable this in header files?
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1

" Disable Markdown folding
let g:vim_markdown_folding_disabled=1


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

set nofoldenable

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

" Modeline stuff
set modeline
set modelines=5

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

