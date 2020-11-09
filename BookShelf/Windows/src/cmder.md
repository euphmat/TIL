# Cmder

## 公式サイト

![Cmder](https://cmder.net/)

## 設定項目

+ Genaral->Interface language->`ja: 日本語`
+ 一般->フォント->`Sarasa Term J`
+ 一般->タブバー->表示しない
+ 起動->名前付きタスクの指定->`{bash::bash}`
+ フィーチャー->色->グラフィックの強化->非アクティブ時にフェードする

## _vimrc

+ rootディレクトリに配置すると、うまく動作するっぽい

```vimscript
set fenc=utf-7
set nobackup
set noswapfile
set autoread
set showcmd
set encoding=utf8
set termencoding=utf8
set fileencodings=utf-8
set fileformats=unix,dos
set number
set smartindent
set showmatch
set tabstop=2
set expandtab
set hlsearch
set autoindent
syntax on
set clipboard=unnamed,autoselect

nmap <Esc><Esc> :nohlsearch<CR><Esc>
inoremap <silent> jj <ESC>
vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>
vnoremap  <Left>   <nop>
vnoremap  <Right>  <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
inoremap  <Left>   <nop>
inoremap  <Right>  <nop>
noremap   <Up>     <nop>
noremap   <Down>   <nop>
noremap   <Left>   <nop>
noremap   <Right>  <nop>
```

## bashrc

+ `Scoop/apps/cmder-full/current/vendor/git-for-windows/etc/profile.d/aliases.sh` を編集する

```shell
# ==============================================================================================================
# ls 
# ==============================================================================================================
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l' 
alias la='ls -la'

# ==============================================================================================================
# cd 
# ==============================================================================================================
alias ..='cd ..'
alias cdm='cd ~/Desktop/Matsumoto/'
alias cdd='cd ~/Desktop/'

# ==============================================================================================================
# gcc 
# ==============================================================================================================
alias ls='ls -F --color=auto --show-control-chars'
function gc(){
        local arg=$1
        gcc --exec-charset=cp932 $arg.c && ./a.exe && echo ""
}
# ==============================================================================================================
# rust
# ==============================================================================================================
alias re='rustc main.rs && ./main.exe'

# ==============================================================================================================
# Git
# ==============================================================================================================
alias gs="git status"
alias gb="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gm="git merge"
alias gw="git switch"
alias gl="git pull"

function gh(){
        local arg=$1
        git checkout -b $arg
        git push --set-upstream origin $arg
}
function gcl(){
        local arg=$1
        git clone https://github.com/euphmat/$arg
}

function got(){
        git add -A
        git commit -m "$*"
        git push origin HEAD
}

# ==============================================================================================================
# mdbook
# ==============================================================================================================
alias mdw="mdbook watch"
alias mdb="/c/Users/jinzai21/Github/TIL/build.sh"

# ==============================================================================================================
# Other
# ==============================================================================================================
alias reload='source ~/Desktop/Data/Scoop/apps/cmder-full/current/vendor/git-for-windows/etc/profile.d/aliases.sh'
alias bashrc='vi ~/Desktop/Data/Scoop/apps/cmder-full/current/vendor/git-for-windows/etc/profile.d/aliases.sh'
alias vimrc='vi ~/_vimrc'
alias bat='bat --paging=never'
alias e='explorer'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
```
