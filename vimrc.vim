set shortmess=atI	" 启动时候不显示援助乌干达儿童提示 
set number		    " 显示行号 
syntax on		    " 语法高亮 
set showcmd		    " 在Vim窗口的右下角显示一个完整的命令已经完成的部分 
set laststatus=2	" 总是显示状态栏
set foldenable		" 允许折叠 
set foldmethod=manual	" 手动折叠
colorscheme desert		" 配色 
set background=dark		" 黑色背景 
set guifont=Consolas:h11	" 设置字体 
set guioptions-=T       " 隐藏工具栏 
set guioptions-=m       " 隐藏菜单栏 
set autoread            " 当文件被改动，自动加载 
set nobackup            " 从不备份 
set noswapfile          " 禁止生成临时文件 
set ruler               "突出显示状态栏标尺 

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
nmap <A-m> :TagbarToggle<CR>