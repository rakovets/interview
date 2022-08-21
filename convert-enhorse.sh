#!/bin/bash
cd ./questions-answers
find . -iname "*.md" | xargs -I '{}' basename {} .md | xargs -I '{}' kramdoc '{}.md'
rm -rf *.md
sed -i 's/= Источники/== Источники/g' *
sed -i ':a;N;$!ba;s/\:doctype\: book\n//g' *
sed -i ':a;N;$!ba;s/xref:README\.adoc\[Вопросы для собеседования\]/to_delete_text/g' *
sed -i 's/^\* <<.*,.*>>/to_delete_text/g' *
sed -i 's/^<<.*,.*>>/to_delete_text/g' *
sed -i ':a;N;$!ba;s/to_delete_text\n//g' *
sed -i ':a;N;$!ba;s/to_delete_text\n\n//g' *
sed -i ':a;N;$!ba;s/\nto_delete_text//g' *
