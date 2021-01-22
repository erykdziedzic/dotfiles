set number
set hlsearch
set encoding=UTF-8
set path+=**
set suffixesadd=.js,.jsx

filetype plugin on
set omnifunc=syntaxcomplete#Complete
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'dense-analysis/ale' 

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'

" FZF 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" JS & React
Plug 'othree/yajs.vim'
Plug 'ruanyl/vim-sort-imports'
Plug 'isRuslan/vim-es6'
Plug 'epilande/vim-react-snippets'
Plug 'mustache/vim-mustache-handlebars'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'valloric/MatchTagAlways' " Highlight enclosing HTML/XML tags.
Plug 'alvan/vim-closetag'
Plug 'csscomb/vim-csscomb'
Plug 'ternjs/tern_for_vim'

"Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" Intelisense in vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" PHP
Plug 'StanAngeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'joonty/vim-phpqa'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'beanworks/vim-phpfmt'
" A standard type: PEAR, PHPCS, PSR1, PSR2, Squiz and Zend
let g:phpfmt_standard = 'PSR2'

" Deoplete
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
Plug 'francoiscabrol/ranger.vim'

" Themes
Plug 'whatyouhide/vim-gotham'
Plug 'mhartington/oceanic-next'
Plug 'jdsimcoe/panic.vim'
Plug 'plainfingers/black_is_the_color'

" Python
Plug 'rbgrouleff/bclose.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tell-k/vim-autopep8'
Plug 'elzr/vim-json'

call plug#end()

" Ranger
let g:NERDTreeHijackNetrw = 0
let g:ranger_replace_netrw = 1

" Deoplete
let g:deoplete#enable_at_startup = 1 

" Ale
let g:ale_linters = {
 \ 'javascript': ['eslint'],
 \ 'htmlm4': ['eslint'],
 \ 'html': ['eslint'],
 \ 'css': ['eslint'],
 \ 'scss': ['eslint']
 \ } 

let g:ale_fixers = {
 \ 'javascript': ['prettier'],
 \ 'htmlm4': ['prettier'],
 \ 'html': ['prettier'],
 \ 'css': ['prettier'],
 \ 'scss': ['prettier']
 \ } 

let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

" Theme
if (has("termguicolors"))
  set termguicolors
endif

" colorscheme OceanicNext
colorscheme gotham
" colorscheme black_is_the_color 
" colorscheme panic 

" javascript 
au Filetype javascript setl
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab
let g:jsx_ext_required = 0

" tag match filetypes
let g:mta_filetypes = {
\'javascript': 1,
\'javascript.jsx': 1,
\ 'html' : 1,
\ 'xhtml' : 1,
\ 'xml' : 1,
\ 'jinja' : 1,
\ }


" Python
let python_highlight_all=1
syntax on

" PHP
au Filetype php setl
    \ tabstop=4
    \ shiftwidth=4
    \ softtabstop=4
    \ expandtab
    \ autoindent
    \ smartindent
let g:PHP_autoformatcomment = 0

" css 
" Automatically comb your CSS on save
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

au Filetype css setl
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab

" scss 
au Filetype scss setl
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab

" html 
filetype indent on
au Filetype html setl
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab

" hbs 
au Filetype html.handlebars setl
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab

" Python
let g:syntastic_python_checkers = ['pylint']
let python_highlight_all=1
syntax on

au Filetype py setl
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" autopep8
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99


" JSON
let g:syntastic_json_checkers = ['jsonlint']
let g:vim_json_syntax_conceal = 0
au Filetype json setl
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab
    \ autoindent


" tags
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,javascript'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" coc config
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-json',
    \ ]
