#!/bin/bash

INOTI_BIN="/usr/bin/inotifywait"
INOTI_EVENTS="moved_to,modify"

GREP_FILTER=".tex"
GIT_BRANCH="local/inotify"
PDFLATEX_TARGET="thesis-darknetsim.tex"

$INOTI_BIN -mrq -e $INOTI_EVENTS --format "%f" ./ | grep --line-buffered "$GREP_FILTER" | while read FILE
do
	echo 
	git checkout $GIT_BRANCH
	git add $FILE
	git commit -m "$(date "+%Y-%m-%d %H:%M:%S") changed file: $FILE"
	pdflatex -interaction=batchmode $PDFLATEX_TARGET
done
