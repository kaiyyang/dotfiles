call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'scrooloose/nerdtree'
" Plug 'itchyny/lightline.vim'
" Plug 'morhetz/gruvbox'
call plug#end()

" Plug in settings
" let g:go_def_mode='gopls'
" let g:go_info_mode='gopls'
" 
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" 
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 
" " vim color scheme
" syntax enable
" set background=dark
" colorscheme solarized
" 
" " fix the slow shift-O issue
" set timeout ttimeout         " separate mapping and keycode timeouts
" set timeoutlen=500           " mapping timeout 500ms  (adjust for preference)
" set ttimeoutlen=20           " keycode timeout 20ms
