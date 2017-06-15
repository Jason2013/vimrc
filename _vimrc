" 设置自定义文件目录

function! s:SetRuntimePath(path)
    if stridx(&runtimepath, a:path) == -1
         let &runtimepath = a:path . "," . &runtimepath
    endif
endfunction

let s:path = expand('<sfile>:p:h')
call s:SetRuntimePath(s:path)

set encoding=utf-8
set termencoding=utf-8
set number

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set fileformats=dos,unix,mac
set fileformat=dos

" 设置状态行，显示常用信息
set statusline=%F%m%r%h%w%=\ [ft=%Y]\ %{\"[fenc=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [ff=%{&ff}]\ [asc=\%03.3b]\ [hex=\%02.2B]\ [pos=%04l,%04v][%p%%]\ [len=%L]
" set statusline=%F%m%r%h%w%=\ [TYPE=%Y]\ %{\"[FILEENCODING=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [FORMAT=%{&ff}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" 总是显示状态行
set laststatus=2

"设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" 设置中文提示
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

" 宽菜单
set wildmenu

" 设置宽屏显示查找项
set wildmenu

" 设置命令历史大小及命令历史窗口高度
set history=100
set cmdwinheight=10

" 映射
nnoremap <F2> :MRU<CR>
nnoremap <S-F2> :MRU 
nnoremap <F6> :let @+=fnamemodify(@%, ":p:h")<CR>
nnoremap <F7> :let @+=fnamemodify(@%, ":p")<CR>
nnoremap <F8> :edit <C-R>+<CR>
nnoremap <C-N> :tabe<CR>

" 编辑配置文件
" let mapleader = "," " default "\\"
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" ini 文件注释、取消注释
nnoremap <leader>c :s/\v^/; /g<CR>
nnoremap <leader>u :s/\v^; ?//g<CR>

vnoremap <leader>c :s/\v^/; /g<CR>
vnoremap <leader>u :s/\v^; ?//g<CR>
