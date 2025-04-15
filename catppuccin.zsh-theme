if [ "$CATPPUCCIN_FLAVOR" = "frappe" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-frappe.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "latte" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-latte.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "macchiato" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-macchiato.zsh
else
    source ${0:A:h}/catppuccin-flavors/catppuccin-mocha.zsh
fi


# PROMPT="%(?:%F{${catppuccin_green}}%1{➜%} :%F{${catppuccin_red}}%1{➜%} )"
PROMPT="%F{${catppuccin_pink}}%{┌─%} "
if [ "$CATPPUCCIN_SHOW_TIME" = true ];
then
  PROMPT+="%F{${catppuccin_mauve}}%T%  "
fi

PROMPT+="%B%F{${catppuccin_pink}}%n%b@%m%  "              # pink "boldUsername@normalHost"
PROMPT+=$'%{\x1b[3m%}'                                    # start italic
PROMPT+="%F{${catppuccin_blue}}%5(~:%-2~/.../%2~:%~)"     # blue truncated full path
PROMPT+=$'%{\x1b[0m%}'                                    # stop italic
PROMPT+="%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

PROMPT+=$'\n'
PROMPT+="%F{${catppuccin_pink}}%{%G└%}"
PROMPT+="%(?:%{%G─%}:%F{${catppuccin_red}}%{%G─%})%B%(!.#.>)%b"
PROMPT+="%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%F{${catppuccin_teal}}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{${catppuccin_teal}}) %F{${catppuccin_red}}%1{%G✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{${catppuccin_teal}}) %F{${catppuccin_green}}%1{%G✔%}"
