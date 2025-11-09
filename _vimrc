" 设置自定义文件目录

function! s:SetRuntimePath(path)
    if stridx(&runtimepath, a:path) == -1
         let &runtimepath = a:path . "," . &runtimepath
    endif
endfunction

let s:path = expand('<sfile>:p:h')
call s:SetRuntimePath(s:path)

" 添加自定义常用函数
let g:num=0
function g:Num()
    let g:num += 1
    return g:num
endfunction

function g:GetDateTimeString()
    " 获取当前日期和时间
    let l:datetime = strftime("%Y/%m/%d %H:%M:%S")
    return l:datetime
endfunction

function g:GetDateTimeLabel()
    " 获取当前日期和时间
    let l:datetime = g:GetDateTimeString()

    " 创建等号字符串，长度与日期时间字符串相等
    let l:equal_line = repeat("=", len(l:datetime))

    " 返回两行字符串
    return l:datetime . "\n" . l:equal_line . "\n"
endfunction

set encoding=utf-8
" set termencoding=utf-8
set number

filetype plugin on

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set fileformats=dos,unix,mac
set fileformat=dos
" gvim
" set guifont=JetBrains_Mono:h14:cANSI:qDRAFT
" goneovim
set guifont=JetBrains_Mono:h11:cANSI:qDRAFT

" guifontwide 仅支持等宽字体
" 微软雅黑等宽字体
" https://github.com/chenyium/Microsoft-Yahei-Mono
" gvim
" set guifontwide=Microsoft\ YaHei\ Mono:h16:cGB2312:qDRAFT
" goneovim
set guifontwide=Microsoft\ YaHei\ Mono:h13:cGB2312:qDRAFT

set viewdir=
let &viewdir = s:path . "/vimfiles/view"
"let &packpath = s:path

" 设置状态行，显示常用信息
set statusline=%F%m%r%h%w%=\ [%Y]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [%{&ff}]\ [\%02.8b]\ [\%02.8BH]\ [%04l,%04v][%p%%]\ [%L]
" set statusline=%F%m%r%h%w%=\ [ft=%Y]\ %{\"[fenc=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [ff=%{&ff}]\ [asc=\%03.3b]\ [hex=\%02.2B]\ [pos=%04l,%04v][%p%%]\ [len=%L]
" set statusline=%F%m%r%h%w%=\ [TYPE=%Y]\ %{\"[FILEENCODING=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"]\"}\ [FORMAT=%{&ff}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" 总是显示状态行
set laststatus=2

"设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" 设置中文提示
language messages en_US.utf-8

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
set noswapfile
" let &directory = s:path . "/swp/dir//"
set nowritebackup
set nobackup
" let &backupdir = s:path . "/swp/bdir//"
set noundofile
" let &undodir = s:path . "/swp/udir//"

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

" 设置自动补全
set complete=.,w,b,u,t

" 映射
nnoremap <C-F4> :Bookmark<CR>
nnoremap <C-N> :tabe<CR>
nnoremap <F2> :MRU<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F5> o<C-R>=g:GetDateTimeLabel()<CR><Esc>
inoremap <F5> <CR><C-R>=g:GetDateTimeLabel()<CR>
nnoremap <C-F5> I[<C-R>=g:GetDateTimeString()<CR>] 
inoremap <C-F5> <Esc>I[<C-R>=g:GetDateTimeString()<CR>] 
nnoremap <F6> :let @+=fnamemodify(@%, ":p:h")<CR>
nnoremap <F7> :let @+=fnamemodify(@%, ":p")<CR>
nnoremap <F8> :tabedit <C-R>+<CR>
nnoremap <F9> :cd <C-R>=expand("%:p:h")<CR><CR>
nnoremap <S-F2> :MRU 

" Command Mode
cnoremap <F10> s/\v^(.+)\n(.+)\n/* [\1](\2)/gc

" 编辑配置文件
" let mapleader = "," " default "\\"
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" ini 文件注释、取消注释
nnoremap <leader>c :s/\v^/; /g<CR>
nnoremap <leader>u :s/\v^; ?//g<CR>

vnoremap <leader>c :s/\v^/; /g<CR>
vnoremap <leader>u :s/\v^; ?//g<CR>

" 设置 pack
let &packpath=&packpath . "," . s:path
call execute("source " . s:path . "/pack_variables.vim")
