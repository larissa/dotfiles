set -gx EDITOR nvim
set -gx RIPGREP_CONFIG_PATH $HOME/.ripgreprc
set -gx FZF_DEFAULT_COMMAND 'rg --files'
set -gx FZF_DEFAULT_OPTS '--tiebreak=end,length,index'

set -gx GITHUB_TOKEN (sed 's/@.*//' /opt/dev/var/private/git_credential_store | string split ':' -r -m1 -f2)
set -gx GLAMOUR_STYLE 'dark'

set -g theme_short_path yes
bind -M insert \cr 'fzf_reverse_isearch'

if test -f /opt/dev/dev.fish
  source /opt/dev/dev.fish
end
if test -e $HOME/.nix-profile/etc/profile.d/nix.sh
  # added by Nix installer
  bash $HOME/.nix-profile/etc/profile.d/nix.sh;
end
