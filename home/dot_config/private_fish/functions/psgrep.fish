#!/usr/bin/env fish
# 
# Script: psgrep
# Desc:   Search your processes
# Credit: http://mmb.pcb.ub.es/~carlesfe/unix/tricks.txt
#
function psgrep --description "Search your processes"
  ps auxw | grep -v grep | grep "$argv" -i --color=auto
end

