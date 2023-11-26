# path additions
export XDG_CONFIG_HOME="$HOME/.config"
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/Downloads/zig-0.11.0-dev.3949+27a66191c/build/stage3/bin

# aliases
alias vim="nvim"
alias cl="clear"
alias ls="exa"
alias bye="shutdown"
alias doas="sudo"

fish_config theme choose "Solarized Dark"

function multicd
  echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd
