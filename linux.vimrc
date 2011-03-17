"========================================================
"write 'source ~/.vim/linux.vimrc' in ~/.vimrc
"设置配色方案
colorscheme desert
"========================================================
"设置高亮
set hlsearch
syntax enable
syntax on
set cursorline
set incsearch
set ruler
set showcmd
set scrolloff=3
"========================================================
"设置tab补全
let g:SuperTabRetaincompletionType=2
"========================================================
" Set the key map
"========================================================
"定义撤销命令
map <A-z> u
imap <A-z> <Esc>ua
map <A-Z> <C-r>
imap <A-Z> <Esc><C-r>a
" =======================================================
"try to make possible to navigate within lines of wrapped lines
map <Down> gj
map <A-j> gj
imap <A-j> <Down>
map <Up> gk
map <A-k> gk
imap <A-k> <Up>
imap <A-l> <Right>
imap <A-h> <Left>
map <A-l> :nohls<CR>
imap <A-o> <Esc>o
imap <C-CR> <Esc>o
imap <A-;> <Esc>a =>
imap <A-i> <Esc>a =>
imap <A-p> <Esc>aparams[:id]<Left><Left><Esc>
map <A-[> <<
map <A-]> >>
vmap <A-[> <gv
vmap <A-]> >gv
imap <A-[> <Esc><<$a
imap <A-]> <Esc>>>$a
imap <C-o> <tab>
" =======================================================
" 设置F2 F3 F4为保存
map <F2> :w<CR>
imap <F2> <Esc><F2> 
map <F3> :w<CR>
imap <F3> <Esc><F3> 
map <F4> :w<CR>
imap <F4> <Esc><F4> 
":!ctags -R % <CR> :TlistUpdate <CR>
"imap <F5> <Esc><F5>
"imap <F6> <Esc><F6>
"imap <C-space> <Esc>
"========================================================
"设置C-s保存A-a全选C-a重排C-c复制C-v粘贴
map <A-s> :w<CR>
imap <A-s> <Esc><A-s>
map <C-s> :w<CR>
imap <C-s> <Esc><C-s>
map <A-w> :q<CR>
imap <A-w> <Esc><A-w>
map <C-a> ggVG
imap <C-a> <Esc><C-a>
map <A-a> gg=G
imap <A-a> <Esc><A-a>
map <C-x> "+d
imap <C-x> <Esc><C-x>
map <C-c> "+y
imap <C-c> <Esc><C-c>
map <C-v> "+p
imap <C-v> <Esc>"+pa
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
"设置A加-=更改窗口高度
map <A-=> <C-W>+
imap <A-=> <Esc><A-=>
map <A--> <C-W>-
imap <A--> <Esc><A-->
map <A-0> <C-W>=
imap <A-0> <Esc><A-0>
"========================================================
"设置视图和插入模式中C-u为Esc
imap <C-u> <Esc>
vmap <C-u> <Esc>
imap <A-u> <Esc>
vmap <A-u> <Esc>
"========================================================
"rails.vim快捷键设置
map <A-c> :Rcontroller
map <A-v> :Rview
map <A-b> :Rspec
map <A-m> :Rmodel
map <A-r> :R<CR>
"========================================================
"tab设置
map <A-t> :tabnew<CR>
imap <A-t> <Esc>:tabnew<CR>
map <A-1> 1gt
imap <A-1> <Esc>1gt
map <A-2> 2gt
imap <A-2> <Esc>2gt
map <A-3> 3gt
imap <A-3> <Esc>3gt
map <A-4> 4gt
imap <A-4> <Esc>4gt
map <A-5> 5gt
imap <A-5> <Esc>5gt
map <A-6> 6gt
imap <A-6> <Esc>6gt
map <A-7> 7gt
imap <A-7> <Esc>7gt
map <A-8> 8gt
imap <A-8> <Esc>8gt
map <A-9> 9gt
imap <A-9> <Esc>9gt
map <A-0> :tablast<CR>
imap <A-0> <Esc>:tablast<CR>
"========================================================
" 本地设置
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
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '<': '>', '%': '%'}
"========================================================
"yaml设置
au BufNewFile,BufRead *.yaml,*.yml    setf yaml
"========================================================
"surround设置
let g:surround_45 = "<% \r -%>"
let g:surround_61 = "<%= \r %>"
"========================================================