"========================================================
"run 'ln -s ~/.vim/vimrc ~/.vimrc'
"========================================================
map <leader>gf <C-w>f
map <leader>ss :source ~/.vimrc<CR>
map <leader>ee :edit ~/.vim/mac.vimrc<CR>
"========================================================
" Set the key map
"========================================================
"try to make possible to navigate within lines of wrapped lines
map <space> i<space><Esc>l
map <CR> i<CR><Esc>
map <Down> gj
map <D-j> gj
map j gj
imap <D-j> <Down>
map <Up> gk
map <D-k> gk
map k gk
map K gk
imap <D-k> <Up>
imap <C-CR> <Esc>A<CR>
"iabbrev v => "Use TextExpander
imap <C-f> <Right>
imap <C-b> <Left>
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-a> <Esc>I
imap <C-e> <Esc>A
"========================================================
" 设置F3 F4为保存
map <F3> :w<CR>
imap <F3> <Esc><F3>
map <F4> :w<CR>
imap <F4> <Esc><F4>
"========================================================
"设置<F5>为格式化
map <F5> gg=G
"========================================================
"设置C加hjkl及左下上右的窗口移动
map <C-h> <C-W>h
imap <C-h> <Esc><C-h>
map <C-j> <C-W>j
imap <C-j> <Esc><C-j>
map <C-k> <C-W>k
imap <C-k> <Esc><C-k>
map <C-l> <C-W>l
imap <C-l> <Esc><C-l>
map <C-Left> <C-W>h
imap <C-Left> <Esc><C-Left>
map <C-Right> <C-W>l
imap <C-Right> <Esc><C-Right>
map <C-Up> <C-W>k
imap <C-Up> <Esc><C-Up>
map <C-Down> <C-W>j
imap <C-Down> <Esc><C-Down>
"========================================================
" 设置vim目录和其他基本设置
"========================================================
"设置文件编码检测类型及支持格式
set fencs=utf-8,gb18030,gbk,gb2312
set encoding=utf-8
set expandtab
set autowrite
set autoread
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
"========================================================
" 剪贴板与无名寄存器同步
set clipboard+=unnamed
"没有备份
set nobackup
"没有swap文件
set noswapfile
"设置退格键为记事本模式
set backspace=2
" 不让vim发出讨厌的滴滴声
"========================================================
set noerrorbells
set visualbell t_vb=
"========================================================
" 设置文件类型
filetype off
filetype indent on
filetype plugin on
"========================================================
" 设置键盘模式为vim非vi
set nocompatible
"========================================================
"其他设置
let loaded_matchparen = 1 "似乎在Lion下显示括号匹配高亮会让移动变的很慢
"set cursorline 似乎在Lion下显示光标所在行高亮会让移动变的很慢
set hlsearch
set incsearch
set ignorecase smartcase
set ruler
set nu
set showmode
set showcmd
set scrolloff=3
set mouse=a
set ttymouse=xterm2
set t_Co=256
set tags=~/.tags/qb,~/.tags/gem,~/.tags/ruby
set whichwrap=b,s,<,>,[,],h,l,~
set laststatus=2
"set statusline=%F%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"========================================================
if v:version > 702
    "自动切换当前目录为当前文件所在的目录
    set autochdir
    "开启持久性撤销
    set undofile
    "指定持久性撤消的临时存放目录
    set undodir=/Users/kyle/.vim/tmp/undofile
endif
"========================================================
"使用语法高亮定义代码折叠
set foldmethod=syntax
"打开文件是默认不折叠代码
set foldlevelstart=99
"========================================================
"vundle设置
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'vim-scripts/SudoEdit.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tomasr/molokai'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'

Bundle 'Align'
"========================================================
"FuzzyFinder设置
map tf :FufFile<cr>
map td :FufBuffer<cr>
map <F1> :FufBuffer<cr>
"========================================================
"NERDTree设置
map tt :NERDTree<cr>
map <F2> :NERDTree<cr>
"========================================================
"syntastic设置
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
"========================================================
"AutoClose设置(http://www.vim.org/scripts/script.php?script_id=2009)
"let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}
"========================================================
"yaml设置
au BufNewFile,BufRead *.yaml,*.yml    setf yaml
"========================================================
"surround设置
autocmd FileType eruby let b:surround_45 = "<% \r -%>"
autocmd FileType eruby let b:surround_61 = "<%= \r %>"
autocmd FileType haml let b:surround_35 = "#\r"
autocmd FileType haml let b:surround_37 = "%\r"
autocmd FileType haml let b:surround_45 = "-\r"
autocmd FileType haml let b:surround_46 = ".\r"
autocmd FileType haml let b:surround_61 = "=\r"
"========================================================
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"========================================================
"设置配色方案
syntax enable
syntax on
colorscheme molokai
let g:molokai_original = 1
"========================================================
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
   " Preparation: save last search, and cursor position.
   let _s=@/
   let l = line(".")
   let c = col(".")
   " Do the business:
   %s/\s\+$//e
   " Clean up: restore previous search history, and cursor position
   let @/=_s
   call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
