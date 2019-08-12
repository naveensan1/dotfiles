execute pathogen#infect()
set nocompatible
syntax enable
filetype plugin indent on
set path+=**
set wildmenu
set background=dark
set  rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc
nnoremap <C-m> :call ToggleMouse()<cr>
set tabstop=4 shiftwidth=4 expandtab
" colorscheme
let g:colarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
" let g:airline_powerline_fonts = 1
colorscheme solarized

" Abbreviations
abbr teh the

" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

nnoremap ,a :-1 read ${HOME}/.vim/.author_template.txt<CR>6jwfba<Space>
nnoremap ,b :-1 read ${HOME}/.vim/.build-script-main_template.txt<CR>6jwfba<Space>
nnoremap ,. :noh<cr>

" NERDtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapOpenVSplit='v'
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
set nu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
"autocmd InsertEnter * call ToggleRelativeOn()
"autocmd InsertLeave * call ToggleRelativeOn()

nnoremap <C-t> :call ToggleRelativeOn()<cr>
inoremap <C-t> <C-o>:call ToggleRelativeOn()<cr>
"https://vi.stackexchange.com/questions/8335/how-to-i-get-around-normal-exiting-visual-mode
"vnoremap <C-t> :<C-u>call ToggleRelativeOn()<cr>

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<C-p> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

""""""""""""""""""""""
" Conf for airline   "
""""""""""""""""""""""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" powerline symbols
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
