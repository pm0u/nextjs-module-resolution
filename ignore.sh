#! /bin/bash

if [ "$CACHED_COMMIT_REF" != "$COMMIT_REF" ]; then
  echo "New Commit - Checking for changes..."
  git diff --quiet $CACHED_COMMIT_REF $COMMIT_REF
  exit
fi

echo "Looks like we already deployed this commit, proceeding with forced re-deploy..."
exit 1
