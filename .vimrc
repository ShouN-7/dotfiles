" $VIMRUNTIME/syntax/php.vim
let g:php_baselib = 1
let g:php_htmlInStrings = 1
let g:php_noShortTags = 1
let g:php_sql_query = 1

"$VIMRUNTIME/syntax/sql.vim
let g:sql_type_default = 'mysql'

"dein.vim_config{{{
  "パス設定
  let s:dein_dir = fnamemodify('~/.vim/dein/',':p')
  let s:dein_repo_dir = s:dein_dir . 'repos/github.com/Shougo/dein.vim'

  "dein.vimがなければインストール
  if !isdirectory(s:dein_repo_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' shellescape(s:dein_repo_dir)
  endif

  "dein.vimをランタイムパスに追加
  if &runtimepath !~# '/dein.vim'
      execute 'set runtimepath^=' . s:dein_repo_dir
  endif

  "deinのfunctionを呼び出し
  call dein#begin(s:dein_dir)
  call dein#add('Shougo/neocomplcache')

  "Plugins{{{
  "+ clorscheme
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('tomasr/molokai')
  "+ スニペット
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  "+ HTML/CSS
  "call dein#add('amirh/HTML-AutoCloseTag')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('gorodinskiy/vim-coloresque')
  call dein#add('mattn/emmet-vim')
  call dein#add('tpope/vim-surround')
  call dein#add('othree/yajs.vim')
  "}}}
  "+ FileTree{{{
  call dein#add('scrooloose/nerdtree')
  "}}}
  call dein#add('Shougo/unite.vim')

  " 必須
  call dein#end()
  filetype plugin indent on
  syntax enable

  " Plugins_install
  if dein#check_install()
    call dein#install()
  endif
"}}}

"BasicSettings {{{
    " + VisualSettings {{{
        colorscheme solarized
        set background=dark
        set number
        set ruler
        set nowrap
    " }}}
    " + SearchSettings {{{
        set hlsearch
        set ignorecase
        set smartcase
    " }}}
    " + IndentSettings {{{
        set autoindent
        set shiftwidth=4
        set expandtab
        set tabstop=4
        set softtabstop=4
        set smarttab
    " }}}
" }}}
"NERDTree自動起動設定
"autocmd VimEnter * execute 'NERDTree'
