if status is-interactive; and [ -f (brew --prefix)/bin/frum ]
  frum init | source
end
