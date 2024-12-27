"**************** Common Settings ****************
set encoding=utf-8

set number autoindent smartindent hlsearch "ignorecase
set tabstop=4
set shiftwidth=4
set foldmethod=marker

set wmnu 
set hlsearch

syntax on

" 마우스 쓸 수 있음! 대회에서 뚝배기 깨지다보면 무조건 쓰게 됨 ㅎㅎ
set mouse+=an
set ttymouse=xterm2

set laststatus=2
set backspace=indent,eol,start
set autoread

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 컨트롤 A, C, V (전체선택, 클립보드 복사, 붙여넣기)
nnoremap <C-a> ggVG
inoremap <C-a> <ESC><C-a>
vnoremap <C-c> "+y
nnoremap <C-v> "+p
vnoremap <C-v> d"+p
inoremap <C-v> <ESC><C-v>

" 화면 스크롤 단축키
map <C-Up> <C-w>k
map <C-Down> <C-w>j
map <C-Left> <C-w>h
map <C-Right> <C-w>l



"************** Plugins Installation **************
" 플러그인 안 쓰실거면 이거 다 지우시면 됩니다.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'L9'
	Plugin 'The-NERD-tree'
	Plugin 'nathanaelkane/vim-indent-guides'
	Plugin 'frazrepo/vim-rainbow'
	Plugin 'Valloric/YouCompleteMe'
	"Plugin 'a.vim'
	"Plugin 'c.vim'
	"Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


"************ NERDTree Plugin Settings ************
" 정작 CP에는 잘 안 쓰는 너드트리
imap <F2> <esc>:NERDTreeToggle<CR>
nmap <F2> <esc>:NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.aux', 'c_out', '\.class', '\.fls', '\.log', '\.fdb_latexmk']
let g:nerdtree_plugin_open_cmd = 'gnome-open'

" YouCompleteMe 설정
let g:ycm_global_ycm_extra_conf = ‘~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py’
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_invoke_completion = ‘<c-space>’


"***************** My Extensions *****************
au BufRead *.latexrc set filetype=vim
au BufRead *.cvimrc set filetype=vim
au BufRead *.pythonvimrc set filetype=vim

source ~/.cvimrc
"source ~/.latexrc
"source ~/.pythonvimrc


"****************** CUI Options ******************
" 테마/스킨. 마음대로 설정하세요
set background=light
hi Folded ctermbg=8
