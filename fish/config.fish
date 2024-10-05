if status is-interactive
    # Commands to run in interactive sessions can go here
end

set me (whoami)

# Add node_modules to path
set fish_user_paths = "./node_modules/.bin"

# Add JetBrains tools to path
fish_add_path "/Users/$me/Library/Application Support/JetBrains/Toolbox/scripts/"

# Add rvm tools to path
fish_add_path "/Users/$me/.rvm/scripts"

# Add rbenv tools to path
fish_add_path "/Users/$me/.rbenv/bin"

# Add libpq (psql) to path
fish_add_path /opt/homebrew/opt/libpq/bin

# Add rust tooling to path
fish_add_path "/Users/$me/.cargo/bin"

# Add golang tooling to path
set -gx GOPATH "$HOME/go"
fish_add_path fish_add_path "$GOPATH/bin"

# Add a 
set -Ux EDITOR nvim

starship init fish | source

[ -f .nvmrc ] && nvm use

# pnpm
set -gx PNPM_HOME /Users/$me/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

eval "$(/opt/homebrew/bin/brew shellenv)"


# Created by `pipx` on 2024-07-01 15:44:46
set PATH $PATH /Users/leo.wheelan/.local/bin

# asdf 
# https://asdf-vm.com/guide/getting-started.html
source ~/.asdf/asdf.fish
# mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

pyenv init - | source
