set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" emmet
Plugin 'mattn/emmet-vim'

" 主题
Plugin 'sickill/vim-monokai'
Plugin 'joshdick/onedark.vim'

" JSX
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" let g:jsx_pragma_required = 1

" NERDTree
Plugin 'scrooloose/nerdtree'
" 启动时自动打开 NERDTree
autocmd vimenter * NERDTree
" 设置 NERDTree 快捷键为 F2
map <F2> :NERDTreeToggle<CR>

Plugin 'MattesGroeger/vim-bookmarks'
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_highlight_lines = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1

Plugin 'scrooloose/syntastic'
" execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['javascript', 'jsx']

Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
" 是否启用顶部 tabline
let g:airline#extensions#tabline#enabled = 1
" 顶部tabline显示方式
" let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='bubblegum'

Plugin 'NLKNguyen/papercolor-theme'
set t_Co=256   " This is may or may not needed.
set background=light

" Plugin 'majutsushi/tagbar'
" map <F3> :TagbarToggle<CR>

Plugin 'flowtype/vim-flow'
let g:flow#enable=1 " 保存后自动检查
let g:flow#errjmp=1 " 跳到错误处
let g:flow#timeout=4 " 延时加载该插件

Plugin 'Quramy/tsuquyomi'  " vim plugin for typescript

Plugin 'lervag/vimtex'  " Latex

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 主题设置
" colorscheme monokai
" colorscheme onedark
" set background=light
colorscheme PaperColor

hi Normal ctermfg=252 ctermbg=none

" 设置文件编码, 解决中文乱码的问题
set encoding=utf-8

" 解决 gvim 菜单中文乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 解决 console 输出乱码
" language messages zh_CN.utf-8

" 设置文字及字体
set guifont=Hack\ 11

" 语法高亮显示
syntax enable
syntax on

" 自动缩进
" set autoindent

" 智能缩进, 开启新行时使用
" set smartindent

" 设置(软)制表符的宽度为 2
" set tabstop=2
" set softtabstop=2

" 设置缩进的空格数为 2
set shiftwidth=2

" 设置显示行号
set number

" 设置代码长度检测为 80
set colorcolumn=80

" 自动换行
" set textwidth=78
" set formatoptions+=mM

" 设置自动保存(文件间跳转时用)
set autowrite

" 设置备份文件时的文件扩展名为 .bak
set backupext=.bak

" 开启插件
filetype plugin indent on

" 设置历史记录条数为 1000
set history=1024

" 在状态栏显示正在输入的命令
set showcmd

" 显示标尺
set ruler

" 高亮光标所在行
set cursorline

" 允许折叠
set foldenable

" 设置折叠方式
set foldmethod=indent

" 搜索时高亮
set hlsearch

" 搜索逐字高亮
set incsearch

" 总是显示状态行
set laststatus=2

" 关闭 vi 模式
set nocp

" 取消 vi 兼容模式
set nocompatible

" 当文件被外部改变时自动读取
set autoread

" 粘贴时保持格式
set paste

" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed

" 隐藏菜单栏
set guioptions-=m

" 隐藏工具栏
set guioptions-=T

" 隐藏右边的滚动条
set guioptions-=r

" 如有垂直分隔的窗口, 隐藏右边的滚动条
set guioptions-=R

" 隐藏左边的滚动条
set guioptions-=l

" 如有垂直分隔的窗口, 隐藏左边的滚动条
set guioptions-=L

" 隐藏底部的(水平)滚动条
set guioptions-=b

" 使用内置 tab 样式而不是 gui
set guioptions-=e

" 编写 js 文件时使用的字典
" autocmd BufNewFile,BufRead *.js set filetype=javascript
" autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict

" 各种自动补全
" inoremap (( ()<ESC>i
" inoremap ((; ();<ESC>hi
" inoremap ((, (),<ESC>hi
" inoremap [[ []<ESC>i
" inoremap [[; [];<ESC>hi
" inoremap [[, [],<ESC>hi
" inoremap {{ {}<ESC>i
" inoremap {{; {};<ESC>hi
" inoremap {{, {},<ESC>hi
" inoremap << <><ESC>i
" inoremap <<; <>;<ESC>hi
" inoremap <<, <>,<ESC>hi
" inoremap `` ``<ESC>i
" inoremap ``; ``;<ESC>hi
" inoremap ``, ``,<ESC>hi
" inoremap '' ''<ESC>i
" inoremap ''; '';<ESC>hi
" inoremap '', '',<ESC>hi
" inoremap "" ""<ESC>i
" inoremap ""; "";<ESC>hi
" inoremap "", "",<ESC>hi
" inoremap ((( (function() {}());<ESC>hhhhi
" inoremap log; console.log();<ESC>hi
" inoremap （（ （）<ESC>i
" inoremap 《《 《》<ESC>i
" inoremap 【【 【】<ESC>i

" 设置 Alt 键不映射到菜单栏
set winaltkeys=no

" 插入模式移动光标
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

" 正常模式下 Alt+h, j, k, l 调整分割窗口大小
nnoremap <M-h> :resize -1<cr>
nnoremap <M-j> :resize +1<cr>
nnoremap <M-k> :resize -1<cr>
nnoremap <M-l> :resize +1<cr>
