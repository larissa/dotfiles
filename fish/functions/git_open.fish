function git_open -d "Open file on github with browser"
  set -l browser_command 'sensible-browser'
  if test (uname -s) = 'Darwin'
    set browser_command 'open'
  end
  if set -q SPIN
    set browser_command 'open'
  end
  set -l host 'https://github.com/'
  set -l branch 'blob/main/'
  set -l filepath $argv[1]
  set -l linenumber $argv[2]
  string match -rq 'github.com/(?<repo>[^/]*/[^/]*/)(?<file>.*)' $filepath
  command $browser_command "$host$repo$branch$file#L$linenumber"
end

