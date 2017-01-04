"---------- Vundle
set nocompatible

so ~/.vim/plugins.vim

syntax enable				"Enable Syntax highlighting.

colorscheme atom-dark-256 

set guioptions-=l			" 
set guioptions-=L			" Remove Scrollbars
set guioptions-=r			" 
set guioptions-=R			" 
set backspace=indent,eol,start 		"Make backspace behave like every other editor.
set number 				"Show line numbers.
set hlsearch 				"Higligh search results.
set incsearch

let mapleader = ',' 			"Change default (\) leader to ,.
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"---------- Mappings 
nmap <leader>ev :tabedit ~/.vimrc<cr>
nmap <leader>ep :tabedit ~/.vim/plugins.vim<cr>

nmap <leader><space> :nohlsearch<cr>

nmap <leader>1 :NERDTreeToggle<cr>

nmap <leader>p :CtrlP<cr>
nmap <leader>t :CtrlPBufTag<cr>
nmap <leader>r :CtrlPMRUFiles<cr>


"---------- Auto-Commands
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %	"Automaticaly source .vimrc on save.
augroup END
