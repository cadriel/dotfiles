if status is-interactive
  set -gx PATH (brew --prefix coreutils)/libexec/gnubin:$PATH
end
