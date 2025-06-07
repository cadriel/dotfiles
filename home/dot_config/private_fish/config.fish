if status is-interactive
  # Update LSColors to match what we want.
  set -gx LS_COLORS (vivid generate gruvbox-dark)

  # Init starship
  starship init fish | source

  # Init zoxide
  zoxide init fish | source
end
