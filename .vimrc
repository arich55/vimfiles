"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('ctrlpvim/ctrlp.vim.git')
call dein#add('edkolev/tmuxline.vim.git')
call dein#add('altercation/vim-colors-solarized')
call dein#add('mattn/emmet-vim.git')
call dein#add('scrooloose/nerdtree')
call dein#add('mattn/emmet-vim.git')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" " CtrP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 10
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_follow_symlinks=1
let g:ctrlp_show_hidden=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|public\/assets\|data\|log\|tmp$',
\ 'file': '\.exe$\|\.so$\|\.dat$'
\ }
nnoremap <leader>R :CtrlPTag<cr>
nnoremap <leader>r :CtrlPBufTag %<cr>


" Tmuxline
let g:tmuxline_preset = 'full'

" Colors
syntax enable
syntax sync minlines=200
set t_Co=256
set background=dark

" Nerdtree
let g:NERDTreeHijackNetrw=0

" Emmet
" let g:user_emmet_leader_key='<C-b>'

" Vim Settings
set backspace=indent,eol,start
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
