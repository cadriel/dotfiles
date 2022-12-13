if status is-interactive;
  if test "$USER_OS" = Darwin; and [ -f (brew --prefix)/bin/n ]
    set -gx N_PREFIX $HOME/.n
    set -gx PATH $N_PREFIX/bin:$PATH
  end

  if test "$USER_OS" = Linux; and [ -f $HOME/.n/bin/n ]
    set -x N_PREFIX "$HOME/.n";
    set -gx PATH $N_PREFIX/bin:$PATH
  end
end
