if status is-interactive
  # Update LSColors to match what we want.
  set -gx LS_COLORS (vivid generate gruvbox-dark)

  # Init startship
  starship init fish | source
end
