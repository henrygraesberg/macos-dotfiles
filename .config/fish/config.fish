set -l ABBR_PATH "../../.shell_scripts/aliases/fish_abbrs.fish"

if status is-interactive
  fish_vi_key_bindings
  source $ABBR_PATH
end

/opt/homebrew/bin/brew shellenv | source

/opt/homebrew/bin/starship init fish | source
