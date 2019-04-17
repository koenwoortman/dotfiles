fish_vi_key_bindings
set fish_escape_delay_ms 10

set -U EDITOR nvim

set PATH ~/bin ~/.config/composer/vendor/bin $PATH

alias d="cd"
alias l="ls -alvh --group-directories-first"
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gl="git log"
alias gmv="git mv"
alias grm="git rm"
alias gs="git status"
alias t="tmux"
alias v="nvim"
alias vim="nvim"
alias wiki="nvim ~/wiki/index.md"

alias zi="sudo zypper install"
alias zs="zypper search"

alias maria="mysql -p"
alias ptest="phpunit -c tests/phpunit.xml --testdox --testsuite"
