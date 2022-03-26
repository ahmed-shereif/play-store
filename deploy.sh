#!/user/bin/env sh

set -en

npm run build

cd dist

git init
git add -A 
git commit -m 'new deployment'
git push -f https://github.com/ahmed-shereif/play-store.git master:gh-pages

cd -
