#! bash oh-my-bash.module

# KrausKork Bash Prompt

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color &>/dev/null; then
  export TERM=gnome-256color
elif [[ $TERM != dumb ]] && infocmp xterm-256color &>/dev/null; then
  export TERM=xterm-256color
fi

# Foreground colors (normal)
FG_BLACK='\[\033[30m\]'
FG_RED='\[\033[31m\]'
FG_GREEN='\[\033[32m\]'
FG_YELLOW='\[\033[33m\]'
FG_BLUE='\[\033[34m\]'
FG_MAGENTA='\[\033[35m\]'
FG_CYAN='\[\033[36m\]'
FG_WHITE='\[\033[37m\]'
FG_PURPLE='\[\033[38;5;141m\]'

# Foreground colors (bold)
FG_BLACK_BOLD='\[\033[1;30m\]'
FG_RED_BOLD='\[\033[1;31m\]'
FG_GREEN_BOLD='\[\033[1;32m\]'
FG_YELLOW_BOLD='\[\033[1;33m\]'
FG_BLUE_BOLD='\[\033[1;34m\]'
FG_MAGENTA_BOLD='\[\033[1;35m\]'
FG_CYAN_BOLD='\[\033[1;36m\]'
FG_WHITE_BOLD='\[\033[1;37m\]'
FG_PURPLE_BOLD='\[\033[1;38;5;141m\]'
FG_YELLOW_LIGHT='\[\033[93m\]'
FG_YELLOW_LIGHT_BOLD='\[\033[1;93m\]'

# Background colors (standard)
BG_BLACK='\[\033[40m\]'
BG_RED='\[\033[41m\]'
BG_GREEN='\[\033[42m\]'
BG_YELLOW='\[\033[43m\]'
BG_BLUE='\[\033[44m\]'
BG_MAGENTA='\[\033[45m\]'
BG_CYAN='\[\033[46m\]'
BG_WHITE='\[\033[47m\]'

# Background colors (extended)
BG_ORANGE='\[\033[48;5;208m\]'
BG_PURPLE='\[\033[48;5;141m\]'
BG_LIGHT_BLUE='\[\033[104m\]'
BG_YELLOW_LIGHT='\[\033[103m\]'

# Reset formatting
RESET='\[\033[0m\]'

MAGENTA=$_omb_prompt_bold_red
WHITE=$_omb_prompt_bold_silver
ORANGE=$_omb_prompt_bold_olive
GREEN=$_omb_prompt_bold_green
PURPLE=$_omb_prompt_bold_purple
RESET=$_omb_prompt_normal
if ((_omb_term_colors >= 256)); then
  ORANGE=$_omb_prompt_bold'\['$(tput setaf 172)'\]'
  GREEN=$_omb_prompt_bold'\['$(tput setaf 190)'\]'
  PURPLE=$_omb_prompt_bold'\['$(tput setaf 141)'\]'
fi

OMB_PROMPT_VIRTUALENV_FORMAT='( %s ) '
OMB_PROMPT_CONDAENV_FORMAT='( %s ) '
OMB_PROMPT_CONDAENV_USE_BASENAME=true
OMB_PROMPT_SHOW_PYTHON_VENV=${OMB_PROMPT_SHOW_PYTHON_VENV:=false}

function _omb_theme_PROMPT_COMMAND() {
  local python_venv
  _omb_prompt_get_python_venv
  PS1="$python_venv${BG_ORANGE}${FG_BLACK_BOLD}[\u]${RESET}${BG_YELLOW_LIGHT}${FG_BLACK_BOLD} @\h ${RESET}${BG_LIGHT_BLUE}${FG_YELLOW_LIGHT_BOLD} \w ${RESET}${BG_MAGENTA}${FG_WHITE} \s \j ${RESET} ${FG_BLUE_BOLD}\t${RESET} ${BG_CYAN}${FG_WHITE_BOLD}\$(scm_prompt_info)${RESET}\n\$ ${RESET}"
  #PS1="$python_venv${BG_ORANGE}${FG_BLACK_BOLD}[\u]${RESET}${BG_YELLOW_LIGHT}${FG_BLACK_BOLD} @\h ${RESET}${BG_LIGHT_BLUE}${FG_YELLOW_LIGHT_BOLD} \w ${RESET} ${MAGENTA}$(clock_prompt)${RESET} ${BG_CYAN}${FG_WHITE_BOLD}\$(scm_prompt_info)${RESET}\n\$ ${RESET}"
}

THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"${_omb_prompt_white}"}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
