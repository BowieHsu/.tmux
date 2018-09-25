set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, require
Plugin 'gmarik/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'klen/python-mode'
"Plugin 'python-mode/python-mode'
"Plugin 'scrooloose/syntastic'
"Plugin 'kevinw/pyflakes-vim'       
"Plugin 'tell-k/vim-autopep8'
"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required

set foldclose=all
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set nu!            "�����к�

"colorscheme deep-space    "������ɫ����
colorscheme molokai 

syntax on         "�﷨����
syntax enable  
set background=dark
"let g:solarized_termcolors=256

set noundofile      "������undofile"
set nobackup        "�����ɱ����ļ�
set showmatch        "����ƥ��ģʽ

set smartindent        "����ֻ�ܶ���
set ai!            "�����Զ�����
set fileencodings=utf-8,gbk

set ambiwidth=double    "��������֧��
set guifont=consolas:h14 "�������弰��С

let tabstop=2                " ����Tab���Ŀ���        [��ͬ�Ŀո����]
let softtabstop=2
set shiftwidth=4
:syntax on

set expandtab                " ��Tab�Զ�ת���ɿո�    [��Ҫ����������Tab��ʱ��ʹ�� Ctrl+V + Tab]
set ignorecase
set mouse=v        "�������

"ȡ���Զ����ݼ�����swp�ļ�"
set nobackup
set nowb
set noswapfile

"�涨��ʾ���ڵĳ���"
"set columns=180
"set lines=60
"�Զ���󻯴���"
au GUIEnter * simalt ~x

"nerdtree �������"
"��vimʱ�Զ���nerdtree"
"autocmd vimenter *  NERDTree 
"������ڳ���NERDTreeû�������ļ�ʱ���Զ��رգ����Լ��ٶ�ΰ�:q
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"noremap <silent> <Leader>f :NERDTreeFind<cr> "��NERDTree,��λ����ǰ�ļ�
"let NERDTreeQuitOnOpen=1 "NERDTree�д��ļ����Զ��ر�NERDTree����

"F2�����͹ر���"
map <F2> :NERDTreeToggle<CR>

"��ʾ�к�"
let NERDTreeShowLineNumbers=1
"�Զ���λ����"
let NERDTreeAutoCenter=1
let NERDTreeChDirMode=1
""��ʾ��ǩ"
let NERDTreeShowBookmarks=1
"���ú����ļ�����"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
""���ڴ�С"
let NERDTreeWinSize=35

"==========================����YouCompleteMe���ѡ��================================="
"Ĭ�������ļ�·��"
"let g:ycm_global_ycm_extra_conf = 'D:\Vim\vimfiles\bundle\YouCompleteMe\third_party\ycmd\cpp\ycm\.ycm_extra_conf.py'
"��vimʱ����ѯ���Ƿ����ycm_extra_conf.py����"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"python������·��"
"let g:ycm_path_to_python_interpreter='D:\Anaconda3x64\python'

""�Ƿ������岹ȫ"
let g:ycm_seed_identifiers_with_syntax=1

"�Ƿ���ע����Ҳ������ȫ"
let g:ycm_complete_in_comments=0

let g:ycm_collect_identifiers_from_comments_and_strings = 0

""��ʼ��ȫ���ַ���"
let g:ycm_min_num_of_chars_for_completion=1

"��ȫ���Զ��ػ�Ԥ������"
let g:ycm_autoclose_preview_window_after_completion=1

"" ��ֹ����ƥ����,ÿ�ζ���������ƥ����"
let g:ycm_cache_omnifunc=0

"�ַ�����Ҳ������ȫ"
let g:ycm_complete_in_strings = 0

"���������漸���ļ�������YCM"
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

""�뿪����ģʽ���Զ��ر�Ԥ������"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"�س���ѡ�е�ǰ��"
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'     
""�������Ҽ���Ϊ"
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>  
"let python_highlight_all = 1 
"===================================Syntastic�������============================="
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"�޸�mapleader��"
let mapleader = ';'

nnoremap <Leader>sp :CtrlSF<CR>
