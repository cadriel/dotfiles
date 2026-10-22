if status is-interactive; and [ -f (brew --prefix)/bin/n ]
  set -gx N_PREFIX $HOME/.n
  set -gx PATH $N_PREFIX/bin:$PATH
end
