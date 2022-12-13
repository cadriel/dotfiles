if test "$USER_OS" = Darwin;
  alias ls='lsd -a'
end

if test "$USER_OS" = Linux;
  alias ls='ls -a --color=auto'
end
