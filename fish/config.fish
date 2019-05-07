# Start X at login
if status is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

fish_vi_key_bindings
set fish_escape_delay_ms 10

set -U EDITOR nvim

set TERM xterm-termite

set PATH ~/bin ~/.config/composer/vendor/bin ~/.local/bin $PATH

set fish_greeting

alias d="cd"
alias e="nvim (git ls-tree -r --name-only HEAD| fzf)"
alias ea="nvim (fzf)"
alias l="ls -alvh --group-directories-first"
alias ll="ls -lvh --group-directories-first"
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias gcof="git checkout --"
alias gcob="git checkout -b"
alias gdf="git diff"
alias gf="git fetch"
alias gl="git log"
alias gmv="git mv"
alias grm="git rm"
alias gp="git push"
alias gs="git status"
alias h="cd ~ && cd "
alias t="tmux"
alias v="nvim"
alias vim="nvim"
alias wiki="nvim ~/wiki/index.md"

alias zi="sudo zypper install"
alias zs="zypper search"

alias maria="mysql -p"
alias ptest="phpunit -c tests/phpunit.xml --testdox --testsuite"

# set fish_color_normal white
set fish_color_command green
# set fish_color_quote
# set fish_color_redirection
# set fish_color_end
set fish_color_error red
# set fish_color_param white
# set fish_color_comment
# set fish_color_match
# set fish_color_selection white
# set fish_color_search_match white
# set fish_color_operator white
# set fish_color_escape white
# set fish_color_cwd white
# set fish_color_autosuggestion white
# set fish_color_user white
# set fish_color_host white
# set fish_color_cancel white
# set fish_pager_color_prefix
# set fish_pager_color_completion
# set fish_pager_color_description
# set fish_pager_color_progress
# set fish_pager_color_secondary
