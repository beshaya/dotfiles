alias delete-merged='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

function dothat {
  last_command=$(history | tail -2 | head -1 | cut -c8-999)
  output=$($last_command 2>&1)
  last_line=$(echo "$output" | tail -n1)
  echo $last_line
  $last_line
}
