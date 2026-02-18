#!/bin/bash

set -e

LOADER="$1"
TAG="$2"

# Load the image
LOADER_OUTPUT=($LOADER)

# Inspect it
docker inspect "$TAG" | jq -r '.[0].Id'
