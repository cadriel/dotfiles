if test "$USER_OS" = Darwin; and status is-interactive; and [ -d "/Applications/Visual Studio Code.app" ]
  set -gx PATH "$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
end
