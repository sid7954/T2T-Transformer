#!/bin/bash

for filename in ~/Desktop/tmp/*.py; do
    cp $filename .
    git add .
    git commit -m "Added file $filename to T2T Transformer"
    GIT_COMMITTER_DATE="Tue 21 Aug 2018 20:19:19 BST" git commit --amend --no-edit --date "Tue 21 Aug 2018 20:19:19 BST"
done
git push origin master