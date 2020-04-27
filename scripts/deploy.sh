#!/usr/bin/env bash
set -euo pipefail

bundle install
echo "github:\n  build_revision: $(git rev-parse HEAD)" >> _config

JEKYLL_ENV=production bundle exec jekyll build -d _site --profile
short_commit=$(git rev-parse --short HEAD)

cd _site
touch .nojekyll

if [[ ! -d .git ]]; then 
    git init
    git remote add origin git@github.com:trentesimobea/trentesimobea.github.io.git
fi

git add --all
git commit -m "Deploy version ${short_commit}"

cd ..
git co .