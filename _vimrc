set encoding=utf-8
set termencoding=utf-8
set number

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set fileformat=dos

language messages zh_CN.utf-8

" 开启语法着色
syntax on

" 从文件开头解析语法着色
syntax sync fromstart
colorscheme desert

" 开启光标位置显示
set ruler

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set smartindent

" 设置不可见字符
set listchars=eol:$,tab:>-,trail:@,extends:>,precedes:<

" 设置交换文件目录
set directory=.,$TEMP

" 设置 unnamed 寄存器与系统剪切板绑定
set clipboard=unnamed

" 设置 path 参数
set path+=**

" 设置宽屏显示查找项
set wildmenu

nnoremap <F6> :let @+=fnamemodify(@%, ":p:h")<CR>
nnoremap <F7> :let @+=fnamemodify(@%, ":p")<CR>
nnoremap <F8> :edit <C-R>+<CR>
