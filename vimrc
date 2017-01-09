set nocompatible

so ~/.vim/plugins.vim

syntax enable				"Enable Syntax highlighting.

set guioptions-=l			" 
set guioptions-=L			" Remove Scrollbars
set guioptions-=r			" 
set guioptions-=R			" 
set backspace=indent,eol,start 		"Make backspace behave like every other editor.
set number 				"Show line numbers.
set hlsearch 				"Higligh search results.
set incsearch
set autoindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline
set nowrap
set relativenumber

let mapleader = ',' 			"Change default (\) leader to ,.
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:php_cs_fixer_level = "psr2"

"---------- Mappings 
nmap <leader>ev :tabedit ~/.vimrc<cr>
nmap <leader>ep :tabedit ~/.vim/plugins.vim<cr>

nmap <leader><space> :nohlsearch<cr>

nmap <leader>1 :NERDTreeToggle<cr>

nmap <leader>p :CtrlP<cr>
nmap <leader>t :CtrlPBufTag<cr>
nmap <leader>r :CtrlPMRUFiles<cr>

vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

nnoremap <Leader>ff :call PhpCsFixerFixFile()<cr>

"---------- Functions
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction


"---------- Auto-Commands
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %	"Automaticaly source .vimrc on save.
augroup END

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<cr>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<cr>
autocmd FileType php inoremap <Leader>uf <Esc>:call IPhpExpandClass()<cr>
autocmd FileType php noremap <Leader>uf :call PhpExpandClass()<cr>
