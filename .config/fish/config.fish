if status is-interactive
  fish_vi_key_bindings
end

/opt/homebrew/bin/brew shellenv | source

/opt/homebrew/bin/starship init fish | source
