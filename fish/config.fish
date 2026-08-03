
if status is-interactive
    starship init fish | source
end

set me (whoami)
set -Ux EDITOR nvim

# PATH configuration
set fish_user_paths "./node_modules/.bin" $fish_user_paths
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path "/Users/$me/Library/Application Support/JetBrains/Toolbox/scripts/"
fish_add_path "/Users/$me/.cargo/bin"
fish_add_path /usr/local/bin
fish_add_path /usr/local/go/bin
fish_add_path "/Users/$me/go/bin"
fish_add_path /usr/local/share/dotnet
fish_add_path "/Users/$me/.local/bin"

# pnpm
set -gx PNPM_HOME "/Users/$me/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node version management
[ -f .nvmrc ] && nvm use

# Aliases
alias assume="source (brew --prefix)/bin/assume.fish"
