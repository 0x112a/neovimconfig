<<<<<<< HEAD
=======
"
"Editor behavior
"
>>>>>>> efceeb41e6e3c36256899f5bfb67320be2fdc0c5
" config
syntax on
set number
" display xiangdui line number nore.. OR re...
set relativenumber
"set norelativenumber
" display a line
set cursorline
<<<<<<< HEAD
=======
set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent

" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
>>>>>>> efceeb41e6e3c36256899f5bfb67320be2fdc0c5


" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype ==  'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'vimwiki'
		exec "MarkdownPreview"
	endif
endfunc

<<<<<<< HEAD
call plug#begin('~/.vim/plugged')
=======

call plug#begin('~/.local/share/nvim/site/autoload')
>>>>>>> efceeb41e6e3c36256899f5bfb67320be2fdc0c5
" table complete
Plug 'dhruvasagar/vim-table-mode'
" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
<<<<<<< HEAD
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" +++++++++++
" Markdown-preview config
" +++++++++++
=======
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" treesitter
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

" _                      _ _   _
"  | |_ _ __ ___  ___  ___(_) |_| |_ ___ _ __
"| __| '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
"| |_| | |  __/  __/\__ \ | |_| ||  __/ |
" \__|_|  \___|\___||___/_|\__|\__\___|_|

" ===
" === nvim-treesitter
" ===
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"typescript", "dart", "java"},     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
" +++++++++++
" Markdown-preview config
" +++++++++++

>>>>>>> efceeb41e6e3c36256899f5bfb67320be2fdc0c5
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
<<<<<<< HEAD
let g:mkdp_browser = ''
=======
let g:mkdp_browser = 'google-chrome-stable'
>>>>>>> efceeb41e6e3c36256899f5bfb67320be2fdc0c5

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

<<<<<<< HEAD
=======
"  ____                                 __ _
"  / ___|___   ___       ___ ___  _ __  / _(_) __ _
" | |   / _ \ / __|____ / __/ _ \| '_ \| |_| |/ _` |
" | |__| (_) | (_|_____| (_| (_) | | | |  _| | (_| |
"  \____\___/ \___|     \___\___/|_| |_|_| |_|\__, |
"                                            |___/
"
let g:coc_global_extensions = ['coc-java','coc-json','coc-vimlsp','coc-marketplace']
" 
" Tab complete
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
" Use <c-space> to trigger completion.
"
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

>>>>>>> efceeb41e6e3c36256899f5bfb67320be2fdc0c5
