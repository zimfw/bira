# vim:et sts=2 sw=2 ft=zsh

typeset -g VIRTUAL_ENV_DISABLE_PROMPT=1

setopt nopromptbang prompt{cr,percent,sp,subst}

# Depends on git-info module to show git information
typeset -gA git_info
if (( ${+functions[git-info]} )); then
  zstyle ':zim:git-info:branch' format '%b'
  zstyle ':zim:git-info:commit' format '%c'
  zstyle ':zim:git-info:dirty' format '%F{red}●%F{yellow}'
  zstyle ':zim:git-info:keys' format \
      'prompt' ' %F{yellow}‹%b%c%D›'
  add-zsh-hook precmd git-info
fi

PS1='%{%G╭%}%{%G─%}%B%(!.%F{red]}.%F{green})%n@%m %F{blue}%~${(e)git_info[prompt]}${VIRTUAL_ENV:+" %F{green}‹${VIRTUAL_ENV:t}›"}%f%b
%{%G╰%}%{%G─%}%B%(!.#.$)%b '
RPS1='%B%(?..%F{red}%? %{%G↵%}%f)%b'
