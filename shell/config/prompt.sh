__ssh_connected() { [[ -n "$SSH_CONNECTION" ]] && echo "$1"; }
__git_in_repo() { [[ -d .git ]] || git rev-parse --git-dir 2>/dev/null; }
__git_is_dirty() { git status --porcelain | grep -q .; }
__git_dirty() { __git_in_repo && __git_is_dirty && echo "$1"; }
__git_clean() { __git_in_repo && (__git_is_dirty || echo "$1"); }
__git_not_in_repo() { __git_in_repo || echo "$1"; }

export PS1='\n$(__ssh_connected "\[\e[33m\]\u@\h \[\e[0m\]")\[\e[34m\]\w\[\e[0m\] $(__git_ps1 "\[\e[38;5;241m\]%s\[\e[0m\]")$(__git_dirty "\[\e[38;5;241m\]*\[\e[0m\]")\n\[\e[35m\]❯\[\e[0m\] '
