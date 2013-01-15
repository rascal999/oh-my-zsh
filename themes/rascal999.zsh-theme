LOADAVG=`cat /proc/loadavg | gawk '{ print $1 " " $2 " " $3 }'`
HOSTNAME=`hostname`
USER=`whoami`
PROMPT='%{$fg_bold[red]%}$LOADAVG %{$fg_bold[green]%}%p $USER $HOSTNAME ➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
