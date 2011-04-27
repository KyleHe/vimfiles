"========================================================
"write 'source ~/.vim/mac.vimrc' in ~/.vimrc
"设置配色方案
colorscheme desert
"========================================================
"设置高亮
set hlsearch
syntax enable
syntax on
set cursorline
set incsearch
set ignorecase smartcase
set ruler
set showcmd
set scrolloff=3
set tags=~/.tags/qb,~/.tags/gem,~/.tags/ruby
"========================================================
" 设置tab补全
let g:SuperTabRetaincompletionType=2
"========================================================
" Set the key map
"========================================================
"try to make possible to navigate within lines of wrapped lines
map <Down> gj
map <D-j> gj
imap <D-j> <Down>
map <Up> gk
map <D-k> gk
imap <D-k> <Up>
imap <C-CR> <Esc>$a<CR>
iabbrev v =>
imap <D-i> <Esc>a => 
"========================================================
" 设置F2 F3 F4为保存
map <F2> :w<CR>
imap <F2> <Esc><F2>
map <F3> :w<CR>
imap <F3> <Esc><F3>
map <F4> :w<CR>
imap <F4> <Esc><F4>
"========================================================
"设置C-s保存A-a全选C-a重排C-c复制C-v粘贴
map <C-s> :w<CR>
imap <C-s> <Esc><C-s>
map <C-a> gg=G
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
"设置D加-=更改窗口高度
map <D-=> <C-W>+
imap <D-=> <Esc><D-=>
map <D--> <C-W>-
imap <D--> <Esc><D-->
map <D-0> <C-W>=
imap <D-0> <Esc><D-0>
"========================================================
"设置视图和插入模式中C-u为Esc
"imap <C-u> <Esc>
"vmap <C-u> <Esc>
"imap <D-u> <Esc>
"vmap <D-u> <Esc>
"========================================================
"tab设置
map <D-t> :tabnew<CR>
imap <D-t> <Esc>:tabnew<CR>
map <D-1> 1gt
imap <D-1> <Esc>1gt
map <D-2> 2gt
imap <D-2> <Esc>2gt
map <D-3> 3gt
imap <D-3> <Esc>3gt
map <D-4> 4gt
imap <D-4> <Esc>4gt
map <D-5> 5gt
imap <D-5> <Esc>5gt
map <D-6> 6gt
imap <D-6> <Esc>6gt
map <D-7> 7gt
imap <D-7> <Esc>7gt
map <D-8> 8gt
imap <D-8> <Esc>8gt
map <D-9> 9gt
imap <D-9> <Esc>9gt
map <D-0> :tablast<CR>
imap <D-0> <Esc>:tablast<CR>
"========================================================
" 设置vim目录和其他基本设置
"========================================================
"设置编码
set fenc=utf-8
"========================================================
"设置文件编码检测类型及支持格式
set fencs=utf-8,gb18030,gbk,gb2312
set encoding=utf-8
set expandtab
set autowrite
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set smartindent
"========================================================
set clipboard+=unnamed  " 剪贴板与无名寄存器同步
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
filetype on
filetype indent on
filetype plugin on
"========================================================
" 设置键盘模式为vim非vi
set nocompatible
set nu
"========================================================
" 设置自动补全
set completeopt=longest,menu
"========================================================
"FuzzyFinder设置
map tf :FufFile<cr>
map td :FufBuffer<cr>
"========================================================
"NERDTree设置
map tt :NERDTree<cr>
"========================================================
"syntastic设置
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
"========================================================
"AutoClose设置(http://www.vim.org/scripts/script.php?script_id=2009)
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}
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
