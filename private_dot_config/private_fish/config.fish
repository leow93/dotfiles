if status is-interactive
    # Commands to run in interactive sessions can go here
end

set me (whoami)

# Add node_modules to path
set fish_user_paths = "./node_modules/.bin"

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
