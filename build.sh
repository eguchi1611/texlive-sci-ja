#!/bin/sh
set -e
cd "$(dirname $0)"

image_name="${1:-"ghcr.io/eguchi1611/texlive-devcontainer:vtest2"}"

# If more than one platform is specified, then push must be set.
platforms="${3:-linux/arm64}"

devcontainer build --image-name $image_name --platform "$platforms" --workspace-folder ./src

id=`docker images --format="{{.Repository}} {{.ID}}" | grep -m1 "texlive-devcontainer" | cut -d' ' -f2`

echo "\nImage ${id} built successfully!"
