# Do not emulate vim's cursor shape behavior, as it doesn't play well
# with tmux + neovim + panel changes
# Set all mode cursors to a block
set fish_cursor_default     block blink
set fish_cursor_insert      block blink
set fish_cursor_replace_one block blink
set fish_cursor_visual      block blink
