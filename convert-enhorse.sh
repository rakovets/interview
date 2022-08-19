#!/bin/bash
cd ./questions-answers
find . -iname "*.md" | xargs -I '{}' basename {} .md | xargs -I '{}' kramdoc '{}.md'
#rm -rf *.md