#!/bin/bash

function create() {
    cd
    python create.py $1
    cd /Users/rileybusche/Development/$1
    git init
    git remote add origin https://github.com/rileybusche//$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}