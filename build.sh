#!/usr/bin/bash

mkdir -p public && cd public
git pull origin master || git clone https://github.com/sjtug/sjtug.github.io.git .
cd ..
hugo -v
ls -l public
