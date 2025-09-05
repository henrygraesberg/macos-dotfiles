# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/hgrasberg/completions:"* ]]; then export FPATH="/Users/hgrasberg/completions:$FPATH"; fi
# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/hgrasberg/.zsh/completions:"* ]]; then export FPATH="/Users/hgrasberg/.zsh/completions:$FPATH"; fi

eval $(thefuck --alias)

eval "$(starship init zsh)"

PATH=~/.console-ninja/.bin:$PATH

. "/Users/hgrasberg/.deno/env"

# pnpm
export PNPM_HOME="/Users/hgrasberg/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export EDITOR="nvim"
export VISUAL=$EDITOR

export ALIAS_PATH=~/.shell_scripts/aliases/aliases.zsh

source $ALIAS_PATH


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#exec fish
