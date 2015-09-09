" $Id: .vimrc,v 1.1.0 2008/09/18 16:47:59 Cnangel Exp $
"
" Multi-encoding setting, MUST BE IN THE BEGINNING OF .vimrc!
"
"let mapleader=','


"语法高亮 
syntax on
"根据文件类型高亮
filetype plugin on
source $VIMRUNTIME/menu.vim

"set fenc enc fencs
set fileencodings=ucs-bom,utf-8,gbk,big5,latin1
"set encoding=gbk
set encoding=gbk
set termencoding=gbk
set fileencoding=gbk

"指定菜单语言
" set langmenu=zh_CN.UTF-8
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim

"缩进
set backspace=2
set autoindent
"set expandtab

"空格代替tab
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
"set cindent shiftwidth=4
"set autoindent shiftwidth=2

"行号
set number

"标尺
set ruler

set incsearch
set showmode
"打开文件时自动回到上次编辑位置
"if has("autocmd")
"	autocmd BufRead *.txt set tw=78
"	autocmd BufReadPost *
"		\ if line("'\"") > 0 && line ("'\"") <= line("$") |
"		\ exe "normal g'\"" |
"		\ endif
"endif

set showcmd

"置粘贴模式，这样粘贴过来的程序代码就不会错位了。
"set paste

"设置帮助信息
set helplang=cn

"界面字体
"set gfn=Courier\ New:h10:cANSI
"set guifont=Courier\ New
"set guifont=simsun\ 13
"if has("gui")
"   if has("win32")
"       set guifont=新宋体:h12
"   else
"       set guifont=新宋体\ 10
"   endif 
"   set columns=128 lines=36
"endif 

"搜索关键字高亮
set hls

"搜索是对不全区分大小写
"set ic

"但现在要区分
"set noic

"设置备份
set backup
set backupext=.bak
"set nobackup
"set nowritebackup

"默认备份文件目录
"set backupdir=/usr/local/backup

"设置配色方案，colorscheme可以设置，但我总提示找不到
"source $VIMRUNTIME/colors/slate.vim
"colorscheme nightflight
"colorscheme desert
"highlight Comment ctermfg=Lightred
"hi Normal ctermfg=252 ctermbg=237 term=standout
"colorscheme greens " http://elephant.linux.net.cn/files/greens.vim
highlight Comment ctermfg=Lightred

"默认是插入模式，退出插入模式 Ctrl+o
"set insertmode

"设置vim控制鼠标滚动
"set mouse=a

"设置 Ctrl+x + Ctrl+f 选择路径时，去除不是文件名的特殊字符
set isf=@,48-57,/,.,-,_,+,#,$,%,~

"设置Crontab为可用状态 
set backupcopy=yes

"设置使用screen vim时，因为错误的按键使屏幕不再闪烁
set vb t_vb=
    
"设置折叠模式
"set foldcolumn=4
"光标遇到折叠，折叠就打开
"set foldopen=all
"移开折叠时自动关闭折叠
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN 
"依缩进折叠
"set foldmethod=indent
"依标记折叠
"set foldmethod=marker

"菜单
set wildmenu
set wildcharm=<C-Z>

"set whichwrap=b,s,h,l,<,>,[,]
"autocmd BufReadPost ~/MLPlatform/* set tags+=~/.vim/tags.MLPlatform
"set tag+=~/.vim/tags.include,~/.vim/tags.gcc,~/.vim/moretags.gcc

"设定文件浏览器目录为当前目录
"set bsdir=buffer
"set autochdir

" C/C++注释
"set comments=://
" 修正自动C式样注释功能
"set comments=s1:/*,mb:*,ex0:/

" 命令行高度
"set cmdheight=1

" 最近文件储存的地点
"set MRU_File=~/.vim/.vim_mru_files

" map <F3> :silent! Tlist<CR>
map <F3> :Tlist<CR>
map <F6> a<C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR><ESC>
map <F7> :w<CR>:!/bin/sh -x %<CR>
map <F8> :w<CR>:!perl -c %<CR>
map <C-F8> :w<CR>:!perl %<CR>
map <F4> :emenu <C-Z>
map <F2> :silent! WMToggle<CR>
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map ,1 a# $Id: <C-R>=expand("%:t")<CR>,v 1.0.0.0 <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR> Cnangel Exp $<CR><ESC>
map ,2 gg\|i<CR><ESC>ka/**<CR><ESC>\|Di * Copyright(c) <C-R>=strftime("%Y")<CR> Alibaba Company, All Rights Reserved.<CR><ESC>\|Di * <CR><ESC>\|Di * @Filename: <C-R>=expand("%:t")<CR><CR><ESC>\|Di * @Description:<CR><ESC>\|Di * @Author: keggy<CR><ESC>\|Di * @Version: 1.0.0<CR><ESC>\|Di * @Time: <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR><CR><ESC>\|Di */<CR><ESC>\|D:w<CR>5k$a
map ,3 a/**<CR><ESC>\|Di * @param <ESC>yyppppo<ESC>\|Di */<ESC>5k$a
map ,4 o<ESC>\|Da* <ESC>:language time C<CR>a<C-R>=strftime("%a %b %d %Y")<CR> Keggy <jun.gej@alibaba-inc.com> 1.0.0-1<ESC>o<ESC>\|Da- 

map ,5 gg\|i<CR><ESC>ka/**<CR><ESC>\|Di * Copyright(c) <C-R>=strftime("%Y")<CR> Alibaba Company, All Rights Reserved.<CR><ESC>\|Di * <CR><ESC>\|Di * @Filename: <C-R>=expand("%:t")<CR><CR><ESC>\|Di * @Description:<CR><ESC>\|Di * @Author: keggy<CR><ESC>\|Di * @Version: 1.0.0<CR><ESC>\|Di * @Time: <C-R>=strftime("%Y/%m/%d %H:%M:%S")<CR><CR><ESC>\|Di */<CR><ESC>\|D:w<CR>5k$a

map ,u /\d\{4\}\/\(\d\{2\}[\/[:space:]\:]\)\{4\}\d\{2\}<CR>19xh<F6><C-o>
map ,v Go<ESC>\|Do<ESC>\|a/*<CR><ESC>\|Di * Local variables:<CR><ESC>\|Di * tab-width: 4<CR><ESC>\|Di * c-basic-offset: 4<CR><ESC>\|Di * End:<CR><ESC>\|Di * vim600: noet sw=4 ts=4 fdm=marker<CR><ESC>\|Di * vim<600: noet sw=4 ts=4<CR><ESC>\|Di */<CR><ESC><C-o>

map ,, :A<CR>
map ,- :AS<CR>
map ,\| :AV<CR>

" tmp map
map ,. gg/gettext<CR>wigetlanguage <ESC>:w<CR>/\(^#.*\)\@<!en_us<CR>gg
map ,m /\(^#.*\)\@<!en_us<CR>\|yyi#<ESC>pf=/gettext<CR>isprintf( <ESC>fudiwi%s<ESC>f)a, getl<C-x><C-p>() )<ESC>:w<CR>?\(^#.*\)\@<=en_us<CR>j\|
map ,n \|yyi#<ESC>p\|/gettext<CR>isprintf( <ESC>fudiwi%s<ESC>f)a, getl<C-x><C-p>() )<ESC>:w<CR>?\(^#.*\)\@<=en_us<CR>j\|
map ,b /gettext<CR>isprintf( <ESC>fudiwi%s<ESC>f)a, getl<C-x><C-p>() )<ESC>:w<CR>?\(^#.*\)\@<=en_us<CR>j\|


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist settings for vim
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 不同时显示多个文件的 tag ，只显示当前文件的  
let Tlist_Show_One_File=1  
"
" " 如果 taglist 窗口是最后一个窗口，则退出 vim  
let Tlist_Exit_OnlyWindow=1 
"
" " 让当前不被编辑的文件的方法列表自动折叠起来   
" " let Tlist_File_Fold_Auto_Close=1  
"
" "把taglist窗口放在屏幕的右侧，缺省在左侧   
" "let Tlist_Use_Right_Window=1   
"
" "显示taglist菜单  
let Tlist_Show_Menu=1  
"
" "启动vim自动打开taglist  
" "let Tlist_Auto_Open=1 

"""""""""""""""""""""""""""""""  
"" winManager setting  
"""""""""""""""""""""""""""""""  
"设置界面分割  
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"  
let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
"let g:winManagerWindowLayout = "TagList|FileExplorer" 

"设置winmanager的宽度，默认为25  
let g:winManagerWidth = 30

"定义打开关闭winmanager按键  
"nmap <silent> <F9> :WMToggle<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope1")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif

let NERDShutUp=1

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview
set completeopt=menu,longest

set tags+=~/.vim/stl_tags


" DoxygenToolkit
map <F11> : Dox<cr>
let g:DoxygenToolkit_authorName="keggy"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

" fold the code
set foldmethod=syntax
set foldlevel=100 " 启动vim时不要自动折叠代码

nnoremap <silent> <F9> :Grep<CR>
let Grep_Default_Filelist = '*.cpp *.c *.h'
let Grep_Skip_Files = '*.bak *~'

"单个文件编译
if(has("win32") || has("win95") || has("win64") || has("win16"))
  let g:iswindows=1
else
  let g:iswindows=0
endif  

map <F5> :call Do_OneFileMake()<CR>
function Do_OneFileMake()
  if expand("%:p:h")!=getcwd()
    echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press <F7> to redirect to the dir of this file." | echohl None
    return
  endif
  let sourcefileename=expand("%:t")
  if (sourcefileename=="" || (&filetype!="cpp" && &filetype!="c"))
    echohl WarningMsg | echo "Fail to make! Please select the right file!" | echohl None
    return
  endif
  let deletedspacefilename=substitute(sourcefileename,' ','','g')
  if strlen(deletedspacefilename)!=strlen(sourcefileename)
    echohl WarningMsg | echo "Fail to make! Please delete the spaces in the filename!" | echohl None
    return
  endif
  if &filetype=="c"
    if g:iswindows==1
      set makeprg=gcc\ -o\ %<.exe\ %
    else
      set makeprg=gcc\ -o\ %<\ %
    endif
  elseif &filetype=="cpp"
    if g:iswindows==1
      set makeprg=g++\ -o\ %<.exe\ %
    else
      set makeprg=g++\ -o\ %<\ %
    endif
    "elseif &filetype=="cs"
    "set makeprg=csc\ \/nologo\ \/out:%<.exe\ %
  endif
  if(g:iswindows==1)
    let outfilename=substitute(sourcefileename,'\(\.[^.]*\)$','.exe','g')
    let toexename=outfilename
  else
    let outfilename=substitute(sourcefileename,'\(\.[^.]*\)$','','g')
    let toexename=outfilename
  endif

  if filereadable(outfilename)
    if(g:iswindows==1)
      let outdeletedsuccess=delete(getcwd()."\\".outfilename)
    else
      let outdeletedsuccess=delete("./".outfilename)
    endif
    if(outdeletedsuccess!=0)
      set makeprg=make
      echohl WarningMsg | echo "Fail to make! I cannot delete the ".outfilename | echohl None
      return
    endif
  endif
  execute "silent make"
  set makeprg=make

  execute "normal :"
  if filereadable(outfilename)
    if(g:iswindows==1)
      execute "!".toexename
    else
      execute "!./".toexename
    endif
  endif
  execute "copen"

endfunction

"进行make的设置
map <F6> :call Do_make()<CR>
map <c-F6> :silent make clean<CR>
function Do_make()
  set makeprg=make
  execute "silent make"
  execute "copen"
endfunction  

"pydiction 1.2 python auto complete
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"""defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20

augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

nmap <C-N>      gt
nmap <C-P>      gT


