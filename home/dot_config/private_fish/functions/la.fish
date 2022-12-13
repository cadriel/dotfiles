if test "$USER_OS" = Darwin;
  alias la='lsd -al'
end

if test "$USER_OS" = Linux;
  alias la='ls -al --color=auto'
end
