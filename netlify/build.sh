#!/bin/bash
set -e

export PATH=$PATH:/opt/build/repo/bin

cp netlify/Gemfile Gemfile
make bin/helm
bundle install
bundle exec jekyll build

# TODO: only if $ENV == production
cp netlify/_redirects _site/
