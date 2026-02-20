#!/bin/sh -l

# Validate if the GitHub handle exists
GITHUB_HANDLE="$1"

# Check if the handle exists on GitHub using the GitHub API
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" https://api.github.com/users/$GITHUB_HANDLE)

if [ "$RESPONSE" != "200" ]; then
  echo "Error: GitHub handle '$GITHUB_HANDLE' does not exist or is invalid."
  exit 1
fi

echo "hello $GITHUB_HANDLE"

echo "time=$(date)" >> $GITHUB_OUTPUT