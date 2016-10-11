set encoding=utf-8
set termencoding=utf-8
set number

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set fileformat=dos

language messages zh_CN.utf-8

" 开启语法着色
syntax on
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
