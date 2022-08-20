#!/bin/bash
cd ./questions-answers
#find . -iname "*.md" | xargs -I '{}' basename {} .md | xargs -I '{}' kramdoc '{}.md'
#rm -rf *.md
pwd
sed -i ':a;N;$!ba;s/\nxref\:README.adoc\[Вопросы для собеседования\]\n//g' *
sed -i ':a;N;$!ba;s/\:doctype\: book\n//g' *
sed -i 's/= Источники/== Источники/g' *
#sed -i ':a;N;$!ba;s/\* <<.*,.*>>\n//g' *

