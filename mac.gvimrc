"========================================================
"write 'source ~/.vim/mac.gvimrc' in ~/.gvimrc
"MacVim
if has("gui_macvim")
  colorscheme molokai
  set guifont=my:h12
  "======================================================
  "启动gvim时窗口的大小
  set lines=37 columns=131
  "======================================================
  "设置背景透明度
  set transparency=9
  "隐藏工具条
  set guioptions-=T
endif
"========================================================
