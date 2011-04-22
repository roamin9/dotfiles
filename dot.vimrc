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


"" for python

"" Python文件中建议不出现tab,而用空格代替，缩进量设为四个空格
"" 自动检测文件类型 autocmd FileType python setlocal et sta sw=4 sts=4
set expandtab 
set tabstop=4
set shiftwidth=4

"" 显示tab与行尾的空白字符
""set list
""set listchars=tab:->,trail:-,eol:$

"" key binding 
map <F12> :r /home/roamin9/.vim/python_head<CR>ggdd
map <F11> :r /home/roamin9/.vim/html_template<CR>ggdd
map <F9> :!python %

"" 标签页的操作
"" gt 转到下一个标签页
map gn :tabnew 
map gc :tabclose<CR>

"" VIM打开多个文件时，buff之间简单的切换
"" Ctrl+l---> buff列表中的下一个buff  :bn
"" Ctrl+h---> buff列表中的上一个buff  :bp
"" 上一次的buff文件  :b#
"" 空格键---> 查看buff中的文件
map <C-l> :bn<CR>
map <C-h> :bp<CR>
map <SPACE> :ls<CR>

""利用nomal mode下的映射，通过tab和Shift+tab来做缩进
""从以前的i tab Esc，缩减为tab，减少了Esc病症的几率 ;)
nmap <tab> v>
nmap <s-tab> v<

""nmap <-> :tabnext<CR>
""nmap <=> :tabprevious<CR>

""利用command mode下的映射，让vim的命令行也拥有键绑定
""Emacs风格的键绑定 Orz ...
cmap <C-a> <home>
cmap <C-e> <end>

"" TagBar taglist 
let g:tagbar_left = 0
let g:tagbar_sort = 0
let g:tagbar_width = 30
let g:tagbar_compact = 1
nmap <silent> <F3> :TagbarToggle<CR>

"" NERDCommenter comment
"" <mapleader>cc
"" <mapleader>cs
let mapleader = ","

"" Calendar calendar diary
"" <mapleader>cal
"" <mapleader>caL
""let g:calendar_navi = ''
let g:calendar_navi_label = '过去,今天,未来'
let g:calendar_monday = 1
