if status is-interactive
    # Commands to run in interactive sessions can go here
end


set fish_greeting

# Neovim
fish_add_path /opt/nvim-linux64/bin

# Cargo
fish_add_path ~/.cargo/bin

# Nvim
fish_add_path ~/.local/bin/

# PyEnv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
alias python  python3

pyenv init - | source


# Zoxide
zoxide init fish | source


# Exa
alias ls exa


# Starship
starship init fish | source


# Fast Node Manager
fnm env | source


# pnpm
set -gx PNPM_HOME "/home/marco/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
