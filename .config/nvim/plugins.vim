" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗  ██╗   ██╗██╗███╗   ███╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝  ██║   ██║██║████╗ ████║
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗  ██║   ██║██║██╔████╔██║
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

call plug#begin('~/.vim/plugged')

Plug 'skanehira/preview-markdown.vim'

Plug 'junegunn/goyo.vim'

"Plug 'airblade/vim-gitgutter'
"highlight GitGutterAdd ctermfg=Green
"highlight GitGutterChange ctermfg=Blue
"highlight GitGutterDelete ctermfg=Red

"Plug 'preservim/nerdtree'
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | wincmd l | endif
""
"map <leader>n :NERDTreeToggle<CR>
""
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


Plug 'dracula/vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'


Plug 'mhinz/vim-startify'
" Vim-Startify {{{
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_custom_header = [
            \ '████████╗ ██████╗ ███████╗██╗  ██╗ ██████╗ ██████╗  █████╗ ██████╗  █████╗ ███╗   ██╗',
            \ '╚══██╔══╝██╔═══██╗╚══███╔╝██║ ██╔╝██╔═══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗████╗  ██║',
            \ '   ██║   ██║   ██║  ███╔╝ █████╔╝ ██║   ██║██████╔╝███████║██████╔╝███████║██╔██╗ ██║',
            \ '   ██║   ██║   ██║ ███╔╝  ██╔═██╗ ██║   ██║██╔═══╝ ██╔══██║██╔══██╗██╔══██║██║╚██╗██║',
            \ '   ██║   ╚██████╔╝███████╗██║  ██╗╚██████╔╝██║     ██║  ██║██║  ██║██║  ██║██║ ╚████║',
            \ '   ╚═╝    ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝'
            \]
highlight StartifyBracket guifg=Blue
highlight StartifyHeader  guifg=Blue
highlight StartifyNumber  guifg=Blue
highlight StartifyNumber  guifg=Blue
highlight StartifyPath    guifg=Blue
highlight StartifySlash   guifg=Blue
highlight StartifySpecial guifg=Blue
"
if has('nvim')
    autocmd TabNewEntered * Startify
else
    autocmd BufWinEnter *
        \ if !exists('t:startify_new_tab')
        \     && empty(expand('%'))
        \     && empty(&l:buftype)
        \     && &l:modifiable |
        \   let t:startify_new_tab = 1 |
        \   Startify |
        \ endif
endif

"}}}


Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                      \ 'syntax': 'markdown'}]

Plug 'tpope/vim-commentary'


" Plug 'fatih/vim-go'

Plug 'tweekmonster/startuptime.vim'

Plug 'ryanoasis/vim-devicons'

Plug 'ap/vim-css-color'

call plug#end()
