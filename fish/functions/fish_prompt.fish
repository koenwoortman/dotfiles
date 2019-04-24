# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch green
set __fish_git_prompt_color_dirtystate FCBC47
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_upstream cyan


# Status Chars
# set __fish_git_prompt_char_cleanstate '✔'
# set __fish_git_prompt_char_conflictedstate '!'
# set __fish_git_prompt_char_dirtystate '✗'
# set __fish_git_prompt_char_invalidstate ''
# set __fish_git_prompt_char_stagedstate ''
# set __fish_git_prompt_char_stashstate ''
# set __fish_git_prompt_char_stateseparator ' '
# set __fish_git_prompt_char_untrackedfiles ''
# set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '↓'
# set __fish_git_prompt_char_upstream_diverged ''
# set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '⇢'
set __fish_git_prompt_char_upstream_prefix ''
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead '⇡'
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_diverged '⇡⇣'


function fish_prompt
  set -l last_status $status
  set -l pwd (prompt_pwd)

  printf "($pwd"
  __fish_git_prompt ": %s"
  printf ") "
end
