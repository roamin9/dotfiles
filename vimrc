set number
"setlocal textwidth=90
colorscheme desert
"" 高亮搜索结果，可以方便的查看变量的引用
set hlsearch

"" set file encoding
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb2312,default
set fileencoding=utf-8

"" 自动检测文件类型并加载相应的设置
filetype plugin indent on

"" VIM打开多个文件时，buff之间简单的切换
"" 右方向键---> buff列表中的下一个buff
"" 左方向键---> buff列表中的上一个buff
"" 空格键---> 上一次的buff文件
"" :ls 查看buff中的文件
map <RIGHT> :bn<CR>
map <LEFT> :bp<CR>
map <SPACE> :b#<CR>

"" for python

"" Python文件中建议不出现tab,而用空格代替，缩进量设为四个空格
"" 自动检测文件类型 autocmd FileType python setlocal et sta sw=4 sts=4
set expandtab 
set tabstop=4
set shiftwidth=4

"" 显示tab与行尾的空白字符
""set list
""set listchars=tab:->,trail:-,eol:$

"" key binding ""
map <F12> :r /home/roamin9/.vim/python_head<CR>ggddG
map <F11> :r /home/roamin9/.vim/html_template<CR>ggdd
map <F9> :!python %
