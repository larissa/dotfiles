# base16-fish (https://github.com/tomyun/base16-fish)
# based on base16-shell (https://github.com/chriskempson/base16-shell)
# Paraiso scheme by Jan T. Sott

function base16-paraiso -d "Paraiso"
  # set syntax highlighting colors
  set -U fish_color_autosuggestion brblack
  set -U fish_color_cancel white --reverse
  set -U fish_color_command blue
  set -U fish_color_comment brblack --dim
  set -U fish_color_cwd green
  set -U fish_color_cwd_root red
  set -U fish_color_end brblack
  set -U fish_color_error brred
  set -U fish_color_escape yellow
  set -U fish_color_history_current --bold
  set -U fish_color_host normal
  set -U fish_color_match blue --reverse
  set -U fish_color_normal normal
  set -U fish_color_operator cyan
  set -U fish_color_param blue --dim
  set -U fish_color_quote green
  set -U fish_color_redirection cyan
  set -U fish_color_search_match bryellow --reverse
  set -U fish_color_selection white --reverse
  set -U fish_color_status red
  set -U fish_color_user brgreen
  set -U fish_color_valid_path --underline
  set -U fish_pager_color_completion normal
  set -U fish_pager_color_description magenta --dim
  set -U fish_pager_color_prefix white
  set -U fish_pager_color_progress cyan --reverse
end
