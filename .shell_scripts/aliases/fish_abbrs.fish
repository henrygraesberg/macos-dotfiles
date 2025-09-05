abbr --add yap git commit -m
abbr --add yeet git push
abbr --add nrl nr lint
abbr --add :a temp_root=\$(pwd)
abbr --add :r cd \$temp_root
abbr --add lg lazygit
abbr --add restart source ~/.zshrc
abbr --add nv nvim .
abbr --add .zshrc nvim ~/.zshrc
abbr --add aliases nvim ~/.shell_scripts/aliases/fish_abbrs.sh
abbr --add nvconfig nvim ~/.config/nvim
abbr --add ghosttyconf nvim ~/.config/ghostty/config
abbr --add vim nvim
abbr --add fuzz fzf --preview {}
abbr --add readgen npx readme-md-generator
abbr --add cls clear

function get_local_ip
    set -l ip (ifconfig | grep 'inet ' | grep -v '127.0.0.1')
    if test -n "$ip"
        echo $ip
    else
        echo "No local IP found"
    end
end

abbr --add ip get_local_ip

function open_nvim_fzf
    set -l file (fzf)
    if test -n "$file"
        nvim $file
    end
end

abbr --add fzv open_nvim_fzf

function open_vscode_fzf
    set -l file (fzf)
    if test -n "$file"
        code $file
    end
end

abbr --add fzcode open_vscode_fzf

function start_ripes_in_background
    /Users/hgrasberg/Documents/other/bin/Ripes-v2.2.6-65-g03df996-mac-universal2.app/Contents/MacOs/Ripes &>/dev/null & disown
end

abbr --add ripes start_ripes_in_background

