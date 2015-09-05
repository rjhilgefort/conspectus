#!/bin/bash

# Get to project root
cwd=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $cwd/../

# Pull in upstream changes
git remote add upstream git@github.com:ddbullfrog/iCard-Resume.git &>/dev/null
git pull upstream gh-pages
