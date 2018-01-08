set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
 Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-bufferline'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
" " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
 " ------------------------------------------------
 "      artline 配置
 "  ------------------------------------------------
set laststatus=2  "永远显示状态栏
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline_powerline_fonts = 1  
"let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1 "缓存区配置



"------------------------------------------------------
"       tagbar 配置
"------------------------------------------------------
nmap <F9> :TagbarToggle<CR>
" tagbar默认去这个目录中寻找ctags，ctags的默认安装路径也是这个目录
 let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
 let g:tagbar_width=26                      " Default is 40, seems too wide
 noremap <Leader>y :TagbarToggle<CR>        " Display panel with (,y)
 autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.php call tagbar#autoopen()
 " 启动 时自动focus
 let g:tagbar_autofocus = 1
"-------------------------------------------------"-
"     NERDTree 配置
"-------------------------------------------------     
" 显示行号
 let NERDTreeShowLineNumbers=1
 let NERDTreeAutoCenter=1
 "在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
 autocmd VimEnter * NERDTree
 " 按下 F2 调出/隐藏 NERDTree
 map  <F2> :NERDTreeToggle<CR>
 map <C-n> :NERDTree<CR>
 " 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
 "let NERDTreeWinPos="left"
 " 当打开 NERDTree 窗口时，自动显示 Bookmarks
 let NERDTreeShowBookmarks=1
 let g:NERDTreeShowHidden = 1             "显示隐藏文件
 "默认打开定位至编辑区
autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w


"------------------------------------------------------
"       ctrp 配置
"------------------------------------------------------
let g:ctrlp_map = '<c-p>' "目录查找
let g:ctrlp_cmd = 'CtrlP'
"定位文件
map <F3> :NERDTreeFind<CR> 
"目录文件一起找
map <F4> :CtrlPMixed<CR>

"------------------------------------------------------
"       IndentLine 配置
"------------------------------------------------------
let g:indentLine_color_dark = 1 " (default: 4)


"-----------------------------------------------------
"       buffer 配置
"-----------------------------------------------------
"切换上一个缓存区文件或下一个缓存区文件快捷键
nmap <C-b>n  :bnext<CR>
nmap <C-b>p  :bprev<CR>

set number
set tabstop=4 "tab4个字符宽度
set softtabstop=4 "按一次tab前进4个字符
set shiftwidth=4    
set background=dark "设置背景
set smarttab "智能缩进
set autoindent " 继承前一行的缩进方式，特别适用于多行注
set expandtab "设置自动缩进
set ai! "设置自动缩进
"缩进的字符个数
set cindent shiftwidth=4
set autoindent shiftwidth=2
set cursorline " 突出显示当前行
"set ruler " 打开状态栏标尺
set smartindent " 开启新行时使用智能自动缩进

syntax on "语法亮
map <F11> gg=G 
map <F12> :!systemctl restart httpd.service<CR>


"设置VIM状态栏
"set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏)

"set statusline=
"set statusline+=%2*%-3.3n%0*\ " buffer number
"set statusline+=%f\ " file name
"set statusline+=%h%1*%m%r%w%0* " flag
"set statusline+=[
"if v:version >= 600
"    set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
"    set statusline+=%{&fileencoding}, " encoding
"    endif
"    set statusline+=%{&fileformat}] " file format
"    set statusline+=%= " right align
"    set statusline+=%2*0x%-8B\ " current char
"    set statusline+=0x%-8B\ " current char
"    set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
"if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
"    set statusline+=\ %{VimBuddy()} " vim buddy
"endif
"

" 光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l
