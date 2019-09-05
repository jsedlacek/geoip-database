if [[ `git status --porcelain` ]]; then
  git add -A
  git commit -m 'update database files'
  npm version patch
  git push origin HEAD:master
  git push --tag
else
  echo 'no changes'
fi
