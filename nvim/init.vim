"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/oskar/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/oskar/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'leshill/vim-json'
"NeoBundle 'moll/vim-node'
NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'grvcoelho/vim-javascript-snippets'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'reewr/vim-monokai-phoenix'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'heavenshell/vim-jsdoc'
"NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'posva/vim-vue'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'Shougo/deoplete.nvim', {'do': ':UpdateREmotePlugins' }
" Test runner
NeoBundle 'janko-m/vim-test'
NeoBundle 'wakatime/vim-wakatime'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
"
syntax on
set background=dark
set tabstop=2
set shiftwidth=2
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
" Code folding for javascript
"augroup javascript_folding
    "au!
    "au FileType javascript setlocal foldmethod=syntax
	"augroup END
"autocmd vimenter * NERDTree
colorscheme monokai-phoenix
set number
set relativenumber
autocmd FileType javascript set formatprg=prettier-eslint\ --stdin
autocmd FileType handlebars :AutoCloseOff

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Ignore some folders and files for CtrlP indexing
 "let g:ctrlp_custom_ignore = {
	 "\ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
		 "\ 'file': '\.so$\|\.dat$|\.DS_Store$'
		 "\ }

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'



 " True colors
set termguicolors
"set colorcolumn=90

" Keys for vim-tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let g:test#javascript#mocha#file_pattern = '\v__tests__?/.*\.(js|coffee)$'
let g:test#javascript#mocha#options = '--colors --require babel-register --exit'
