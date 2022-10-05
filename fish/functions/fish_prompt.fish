# name: surubim
function fish_prompt
  # You can override some default options with config.fish:
  #
  #  set -g theme_short_path yes
  #  set -g theme_full_path yes

  set -l last_command_status $status
  set -l cwd
  set -l who $USER
  set -l host (hostname -s)

  if test "$theme_short_path" = 'yes'
    set cwd (basename (prompt_pwd))
  else if test "$theme_full_path" = 'yes'
    set cwd (pwd | sed "s:^$HOME:~:")
  else
    set cwd (prompt_pwd)
  end

  set -l fish     "➜"
  set -l ahead    "↑"
  set -l behind   "↓"
  set -l diverged "⥄ "
  set -l dirty    "⨯"
  set -l none     "◦"
  set -l stashed  "≡"
  set -l prompt_indicator "❯"

  set -l normal_color     (set_color normal)
  set -l success_color    (set_color cyan --bold)
  set -l error_color      (set_color red --bold)
  set -l directory_color  (set_color yellow --bold)
  set -l repository_color (set_color green --bold)
  set -l where_am_i_color (set_color brblack --bold)
  set -l prompt_color     (set_color brblack)

  if test $last_command_status -eq 0
    echo -n -s $success_color $fish $normal_color
  else
    echo -n -s $error_color $fish $normal_color
  end

  echo -n -s " " $where_am_i_color $who "@" $host $normal_color

  if git_is_repo
    if test "$theme_short_path" = 'yes'
      set -l root_folder (command git rev-parse --show-toplevel 2> /dev/null)
      set -l parent_root_folder (dirname $root_folder)
      set cwd (echo $PWD | sed -e "s|$parent_root_folder/||")
    end

    echo -n -s " " $directory_color $cwd $normal_color
    echo -n -s " on " $repository_color (git_branch_name) $normal_color " "

    if git_is_stashed
      echo -n -s $stashed " "
    end

    if git_is_touched
      echo -n -s $dirty
    else
      echo -n -s (git_ahead $ahead $behind $diverged $none)
    end
  else
    echo -n -s " " $directory_color $cwd " " $prompt_color $prompt_indicator $normal_color
  end

  echo -n -s " "
end
