git config user.email "SatisMeter CI"
git config user.name "support@satismeter.com"


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
