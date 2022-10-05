function fzf_reverse_isearch
  history merge
  history -z | fzf --read0 --print0 --tiebreak=index --toggle-sort=ctrl-r -q (commandline) | read -lz result
  and commandline -- $result
  commandline -f repaint
end

