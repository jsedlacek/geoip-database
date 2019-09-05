git config user.email "sedlacek.jakub@gmail.com"
git config user.name "CI"


if [[ `git status --porcelain` ]]; then
  git add -A
  git commit -m 'update database files'
  npm version patch
  git push origin HEAD:master
  git push --tag
  npm publish
else
  echo 'no changes'
fi
