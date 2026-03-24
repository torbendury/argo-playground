#!/bin/bash

set -e

new_ver=$1

echo "new version: $new_ver"

docker tag docker.io/library/nginx:latest docker.io/torbendury/nginx:$new_ver
docker push docker.io/torbendury/nginx:$new_ver

tmp_dir=$(mktemp -d)
echo $tmp_dir

git clone github.com/torbendury/argo-playground.git $tmp_dir

sed -i '' -e "s/torbendury\/nginx:.*/torbendury\/nginx:$new_ver/" $tmp_dir/my-app/1_deployment.yaml

cd $tmp_dir
git add .
git commit -m "Update image to $new_ver"
git push

rm -rf $tmp_dir
