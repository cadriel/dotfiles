set -l OS (uname)
if test "$OS" = Darwin; and status is-interactive; and [ -d "$(brew --prefix)/opt/ruby/bin" ]
  set -gx PATH "$(brew --prefix)/opt/ruby/bin:$PATH"
  set -gx PATH "$(gem environment gemdir)/bin:$PATH"
end
