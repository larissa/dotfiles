function fish_mode_prompt
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = fish_vi_key_bindings
    or test "$fish_key_bindings" = fish_hybrid_key_bindings
    switch $fish_bind_mode
      case default
        set_color green --reverse
        echo '[N]'
      case insert
        set_color blue --reverse
        echo '[I]'
      case replace_one
        set_color red --reverse
        echo '[R]'
      case replace
        set_color red --reverse
        echo '[R]'
      case visual
        set_color magenta --reverse
        echo '[V]'
    end
    set_color normal
    echo -n ' '
  end
end

