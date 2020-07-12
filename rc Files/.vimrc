" Vim-Plug

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dikiaap/minimalist'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'udalov/kotlin-vim'
Plug 'preservim/nerdtree'
call plug#end()


" Indentation

let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et 
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1


" Rainbow Parenthesis

let g:rainbow_active = 1


" Encoding for Devicons

set encoding=UTF-8


" Nerd Tree

map <C-t> :NERDTreeToggle<CR>


" Ale completion

let g:ale_completion_enabled = 1


" Syntax Highlighting

syntax on


" Colorscheme Settings

set background=dark
set t_Co=256
colorscheme minimalist


" Indent line

let g:indentLine_char = '┊'
let g:indentLine_first_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 1
let g:indentLine_bgcolor_term = 256


" Airline settings

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
