#!/bin/sh

echo "Add new charts to existing repo - update index"
helm repo index --url https://weizheng78.github.io/stacksimplify-helm-charts/ --merge index.yaml .
sleep 10

echo "Add files and do local commit"
git add .
git commit -am "Update Helm charts index"

echo "Pushing to Github Repository"
git push
