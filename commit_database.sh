git config --global user.email "sedlacek.jakub@gmail.com"
git config --global user.name "CI"

header=$(echo -n "ad-m:${GITHUB_TOKEN}" | base64)

if [[ `git status --porcelain` ]]; then
  git add -A
  git commit -m 'update database files'
  npm version patch
  git -c http.extraheader="AUTHORIZATION: basic $header" push origin HEAD:master
  git -c http.extraheader="AUTHORIZATION: basic $header" push --tag
  npm publish
else
  echo 'no changes'
fi
