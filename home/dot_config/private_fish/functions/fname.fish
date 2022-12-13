#!/usr/bin/env fish
#
# Script: fname
# Desc:   Search your filesystem from '.' upwards for the string
# Credit: http://mmb.pcb.ub.es/~carlesfe/unix/tricks.txt
#
function fname --description "Search your filesystem from '.' upwards for the string"
  find . -iname "*$argv*"
end

