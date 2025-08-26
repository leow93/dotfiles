if status is-interactive
    # Commands to run in interactive sessions can go here
end

set me (whoami)

# Add node_modules to path
set fish_user_paths = "./node_modules/.bin"

# Add JetBrains tools to path
fish_add_path "/Users/$me/Library/Application Support/JetBrains/Toolbox/scripts/"

# Add libpq (psql) to path
fish_add_path /opt/homebrew/opt/libpq/bin

# Add rust tooling to path
fish_add_path "/Users/$me/.cargo/bin"

fish_add_path /usr/local/bin

# Add golang tooling to path
fish_add_path /usr/local/go/bin/
fish_add_path "/Users/$me/go/bin"

# Add openjdk 
fish_add_path /opt/homebrew/opt/openjdk/bin

# Add personal todo helper 
fish_add_path "/Users/$me/.config/todo"

# Add a 
set -Ux EDITOR nvim

starship init fish | source

[ -f .nvmrc ] && nvm use

# pnpm
set -gx PNPM_HOME /Users/$me/Library/pnpm
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

eval "$(/opt/homebrew/bin/brew shellenv)"

alias assume="source (brew --prefix)/bin/assume.fish"
