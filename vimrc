" .vimrc
" Author: Eddie Antonio Santos <easantos>
" See also: .vim/after/plugins, .vim/bundle

" Pathogen first -- Relying on sensible.vim
execute pathogen#infect()
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

" Wrapping junk:
set linebreak
set nowrap " Really hate wrapping.
set showbreak=»»»»
set wrapmargin=1 " We'll put a special UTF-8 character to signify long lines.
"set listchars=tab:␉·,trail:·,eol:¶,extends:…,precedes:…
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

" temp
let g:tern_show_argument_hints='on_hold'
