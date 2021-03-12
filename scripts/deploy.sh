#!/usr/bin/env sh
set -e

npm run docs:build

cd docs/.vuepress/dist

git init

git config user.name ""

git add -A
git commit -m "【deploy success】"

git push origin -f git@github.com:liwazero/liwazero.github.io.git master