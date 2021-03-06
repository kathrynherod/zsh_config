" -----------Vundle-------------c
if 0 | endif

if &compatible
  set nocompatible
endif

" set nocompatible
" filetype off

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()


" Plugins

" NeoBundle 'VundleVim/Vundle.vim'
" NeoBundle 'vim-airline/vim-airline'
" NeoBundle 'vim-airline/vim-airline-themes'
" NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'scrooloose/syntastic'
" NeoBundle 'valloric/youcompleteme'
" NeoBundle 'raimondi/delimitmate'
" NeoBundle 'nathanaelkane/vim-indent-guides'
" NeoBundle 'scrooloose/nerdcommenter'
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'shougo/neocomplete.vim'

"call vundle#end()
"filetype plugin indent on

" NeoBundle
set rtp+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'shougo/neocomplete.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'valloric/youcompleteme'
NeoBundle 'raimondi/delimitmate'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'kabbamine/vcoolor.vim'

call neobundle#end()

filetype plugin indent on

" NeoComplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Vim-commentary
autocmd FileType apache setlocal commentstring=#\ %s

" Tabulacion
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Pathogen

" execute pathogen#infect()
" syntax enable

" Colors
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme PaperColor
hi Normal guibg=NONE ctermbg=NONE


" Indent Guides
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
" set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red        ctermbg=243
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightred   ctermbg=179

" Airline
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" let g:airline_theme = 'base16_grayscale'
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒 '
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme = 'base16_grayscale'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.copy = ''
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

set nu
set laststatus=2

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" Vim-Jedi
let g:jedi#auto_initialization = 1

NeoBundleCheck


