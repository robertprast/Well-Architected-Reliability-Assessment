#!/bin/bash

echo $GITHUB_TOKEN
GITHUB_TOKEN=$( curl -s -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/user )
echo "GitHub Token: $GITHUB_TOKEN"
echo "GITHUB_TOKEN=$(echo $GITHUB_TOKEN|base64)"

git checkout -b my-new-branch
git push origin my-new-branch