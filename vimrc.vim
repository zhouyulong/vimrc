set shortmess=atI	" 启动时候不显示援助乌干达儿童提示 
set number		    " 显示行号 
syntax on		    " 语法高亮 
set showcmd		    " 在Vim窗口的右下角显示一个完整的命令已经完成的部分 
set laststatus=2	" 总是显示状态栏
set foldenable		" 允许折叠 
set foldmethod=manual	" 手动折叠
"set nofoldenable
set background=dark		" 黑色背景 

set nospell
function! Dict()
    let l:wincol=wincol()
    let l:winline=winline()
    let l:x=getwinposx()
    let l:y=getwinposy()
    "echo l:x." ".l:y
    let l:abc=expand("<cword>")
    if has("win32")
        let l:com="ruby C:\\Users\\yuhang\\vimrc\\dict.rb ".l:abc
        call system(l:com)
        echo l:com
    endif
    if has("mac")
        let l:com="ruby ~/vimrc/shanbay.rb ".l:abc
        let l:shanbay=system(l:com)
        echo l:shanbay
    endif
endfunction

function! Shanbay()
     let l:wincol=wincol()
    let l:winline=winline()
    let l:x=getwinposx()
    let l:y=getwinposy()
    "echo l:x." ".l:y
    let l:abc=expand("<cword>")
    let l:com="ruby C:\\Users\\Administrator\\vimrc\\shanbay.rb ".l:abc
    if has("mac")
        let l:com="ruby ~/vimrc/shanbay.rb ".l:abc
    endif
    let l:shanbay=system(l:com)
    echo l:shanbay
endfunction


if has("win32")
    set guifont=Consolas:h11	" 设置字体 
    set guifont=Consolas:h11:cANSI
endif
colorscheme desert		" 配色 
let g:enable_bold_font=1

"set guifont=Microsoft_YaHei_Mono:h11
set noeb "出错时没有bi的报警声音
set vb "出错时候闪烁提示
 
if has("gui_running")
    set background=light		" 黑色背景 
    colorscheme solarized
    colorscheme hybrid_material
    let g:rbpt_colorpairs = [
                \ ['brown',       'RoyalBlue3'],
                \ ['Darkblue',    'SeaGreen3'],
                \ ['darkgray',    'DarkOrchid3'],
                \ ['darkgreen',   'firebrick3'],
                \ ['darkcyan',    'RoyalBlue3'],
                \ ['darkred',     'SeaGreen3'],
                \ ['darkmagenta', 'DarkOrchid3'],
                \ ['brown',       'firebrick3'],
                \ ['gray',        'RoyalBlue3'],
                \ ['darkmagenta', 'DarkOrchid3'],
                \ ['Darkblue',    'firebrick3'],
                \ ['darkgreen',   'RoyalBlue3'],
                \ ['darkcyan',    'SeaGreen3'],
                \ ['darkred',     'DarkOrchid3'],
                \ ['red',         'firebrick3'],
                \ ]

    " 不加入这行, 防止黑色括号出现, 很难识别
    " \ ['black',       'SeaGreen3'],

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces
endif
if has("unix")
    set guifont=Consolas\ 13	" 设置字体 
    "set guifont=Microsoft_YaHei_Mono:h11
endif
if has("mac")
    set guifont=Monaco:h13
endif

if has("gui_runing") && has("win32")
    map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen",0)<CR>
endif

 set guioptions-=T       " 隐藏工具栏 
 set guioptions-=m       " 隐藏菜单栏 
set autoread            " 当文件被改动，自动加载 
set nobackup            " 从不备份 
set noswapfile          " 禁止生成临时文件 
set ruler               "突出显示状态栏标尺 
set cc=80
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
set cursorline
set cursorcolumn
set hlsearch
set incsearch

" begin 设置中文不乱码 
set encoding=utf-8
set fencs=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" end 

" 缩进 
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
" 

" 键盘映射 
if has("win32")
    nmap <A-m> :TagbarToggle<CR>
    nmap <A-o> :A<CR>
    nmap <A-O> :NERDTreeToggle<CR>
    nmap <A-d> :call Dict()<CR>
    nmap <A-D> :call Shanbay()<CR>
endif
if has("mac")
    nnoremap µ :TagbarToggle<CR>
    nnoremap Ø :NERDTreeToggle<CR>
    nmap ∂ :call Dict()<CR>
    nmap <A-D> :call Shanbay()<CR>
    nmap Î :call Shanbay()<CR>
    
else
    nmap <A-m> :TagbarToggle<CR>
    nmap <A-O> :NERDTreeToggle<CR>
    nmap <A-d> :call Dict()<CR>
    nmap <A-D> :call Shanbay()<CR>
endif

if has("unix")
    set path+=/usr/include/qt4
    set path+=/usr/include/qt4/Qt
    set path+=/usr/include/qt4/QtCore
    set path+=/usr/include/qt4/QtGui
    set path+=/usr/include/qt4/QtNetwork
    set path+=/usr/include/qt4/QtSql
    set path+=/usr/include/qt4/QtXml
    set path+=/usr/include/c++/4.8
    set path+=/usr/include
endif
if has("mac")
    set path+=.
    set path+=../bin/.moc
    set path+=../bin/.qrc
    set path+=../bin/.ui
    set path+=./soap

    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtCore
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtGui
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtWidgets
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtNetwork
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtXml
    set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/include/QtSql

    set path+=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
    set path+=/usr/include
    set path+=/opt/local/include
 
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtCore.framework
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtGui.framework
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtNetwork.framework
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtCore.framework/Versions/5/Headers
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtGui.framework/Versions/5/Headers
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtWidgets.framework/Versions/5/Headers
    "set path+=/Users/jiyuhang/Qt5.4.0/5.4/clang_64/lib/QtNetwork.framework/Versions/5/Headers
endif

"set completeopt-=preview
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
