if test "$USER_OS" = Darwin; and status is-interactive
  # Setup homebrew
  if test "$USER_ARCH" = arm64
    eval (/opt/homebrew/bin/brew shellenv)
  end

  if test "$USER_ARCH" = amd64
    eval (/usr/local/bin/brew shellenv)
  end
end
