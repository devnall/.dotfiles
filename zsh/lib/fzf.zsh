# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/dnall/homebrew/opt/fzf/bin* ]]; then
  export PATH="$PATH:/Users/dnall/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/dnall/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/dnall/homebrew/opt/fzf/shell/key-bindings.zsh"


#export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always . $HOME"
export FZF_DEFAULT_OPTS="--ansi"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type directory --exclude .git --color=always . $HOME"
