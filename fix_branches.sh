#!/bin/sh

git filter-branch -f --env-filter '
CORRECT_NAME="workshop author"
CORRECT_EMAIL="workshop@example.com"
export GIT_COMMITTER_NAME="$CORRECT_NAME"
export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
export GIT_AUTHOR_NAME="$CORRECT_NAME"
' --tag-name-filter cat -- --branches --tags
