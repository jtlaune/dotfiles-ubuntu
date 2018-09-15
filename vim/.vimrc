" LETS BREAK DESE ARROW KEYS BOI
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" vim options
set mouse+=a
set number
set clipboard=unnamedplus
set tabstop=4
set formatoptions+=r " insert comment charaters on new lines
set expandtab

" let me resize windows in tmux!!
set ttymouse=xterm2

" vim-plug
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Example:
" Plug 'junegunn/vim-easy-align'

" latex
Plug 'lervag/vimtex'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" buffer switching
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ap/vim-buftabline'
Plug 'kien/ctrlp.vim'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

" syntax highlighting
Plug 'hdima/python-syntax'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" whitespace highlighting
let g:CurrentLineWhitespaceOff='soft'
nmap <leader>ww :StripWhitespace<cr>

" python syntax
let python_highlight_space_errors=0

" persistent undo courtesy of mpcsh/dotfiles
set undofile
set undodir=$HOME/.vim/tmp/undo/
set undolevels=500
set undoreload=500
if !isdirectory(expand(&undodir))
	call mkdir(expand(&undodir), 'p')
endif

" store all backup files centrally courtesy of mpcsh/dotfiles
set backupdir=$HOME/.vim/backup/
if !isdirectory(expand(&backupdir))
	call mkdir(expand(&backupdir), 'p')
endif

" central swapfiles courtesy of mpcsh/dotfiles
set directory=$HOME/.vim/tmp/swap/
if !isdirectory(expand(&directory))
	call mkdir(expand(&directory), 'p')
endif

" colorscheme
set termguicolors
syntax enable
let g:nord_comment_brightness = 15
colorscheme nord

" Python syntax
let python_highlight_all = 1

" ctrlp options
nmap <leader>p :CtrlP<cr>

" vimtex options
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_manual = 1
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0 " stop with the hbox warnings
let g:vimtex_compiler_latexmk = {
	\ 'background' : 1,
	\ 'build_dir' : 'build',
	\ 'callback' : 1,
	\ 'continuous' : 1,
	\ 'executable' : 'latexmk',
	\ 'options' : [
	\   '-pdf',
	\   '-verbose',
	\   '-file-line-error',
	\   '-synctex=1',
	\   '-interaction=nonstopmode',
	\   '-xelatex',
	\ ],
	\}

" markdown options
let g:vim_markdown_folding_disabled = 1
let vim_markdown_preview_use_xdg_open=1
let vim_markdown_preview_github=1

" buffergator options
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_suppress_keymaps = 1
nmap <leader>jj :BuffergatorMruCyclePrev<cr>
nmap <leader>kk :BuffergatorMruCycleNext<cr>
nmap <leader>bl :BuffergatorOpen<cr>
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

" highlight the 81st character in the column
"hi ColorColumn guibg=#2d2d2d ctermbg=246
"set colorcolumn=+1

" Don't wrap lines unless its a latex file.
set wrap
set textwidth=0 wrapmargin=0

augroup WrapLineInTeXFile
    autocmd!
    autocmd FileType tex setlocal wrap
    autocmd FileType tex setlocal textwidth=80
augroup END

" Spell checking colors i can actually see
hi SpellBad ctermfg=red guifg=red
hi Normal ctermbg=NONE guibg=NONE
hi BufTabLineFill ctermbg=NONE guibg=NONE
