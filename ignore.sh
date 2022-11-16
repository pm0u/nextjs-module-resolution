#! /bin/bash

if [ "$CACHED_COMMIT_REF" != "$COMMIT_REF"]; then
  git diff --quiet $CACHED_COMMIT_REF $COMMIT_REF
  exit
fi

exit 1
