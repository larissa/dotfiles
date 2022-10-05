function search-and-edit
  # do things with parameters like $1 such as
  rg $argv -l | xargs nvim
end
