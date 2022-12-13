if test "$USER_OS" = Darwin; and status is-interactive; and [ -f (brew --prefix)/bin/frum ]
  frum init | source
end
