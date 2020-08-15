#!/usr/bin/env bash

# Kernel Auto Upstream

# Variables
GITHUB_REF="github.com/crazyuploader/github-readme-stats.git"

git config --global user.email "49350241+crazyuploader@users.noreply.github.com"
git config --global user.name "crazyuploader"
git clone "https://${GITHUB_REF}" readme
cd readme || exit 1

echo ""
git fetch https://github.com/anuraghazra/github-readme-stats master
git checkout master
git merge FETCH_HEAD --no-edit
echo ""
git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GITHUB_REF}" HEAD:master
echo ""
echo "Done"
