if status is-interactive
    # Set default fish key bindings
    set --global fish_key_bindings fish_default_key_bindings

    # Set the correct fish theme
    fish_config theme choose ayu-mirage

    # Update LSColors to match what we want.
    set -gx LS_COLORS (vivid generate catppuccin-mocha)

    # Configure homebrew
    set -gx HOMEBREW_NO_ENV_HINTS 1
    set -gx HOMEBREW_AUTO_UPDATE_SECS 86400

    # Init starship
    starship init fish | source

    # Init zoxide
    zoxide init fish | source
end
