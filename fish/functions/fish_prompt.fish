function fish_prompt
    set -l pwd (prompt_pwd)
    printf "($pwd) "
end