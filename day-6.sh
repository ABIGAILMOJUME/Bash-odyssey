#!/bin/bash

file="$1"

line_count=$(wc -l < "$1")
word_count=$(wc -w <"$1")
character_count=$(wc -m <"$1")

top_word=$(grep -oE '[[:alpha:]]+' < "$1" | tr '[:upper:]'  '[:lower:]' | sort | uniq -c | sort -nr | head -1 | awk '{print $2}')

echo "Your $1 file contains $line_count number of lines,$word_count number of words and $character_count number of characters"
sleep 1
echo "Also, the word that appears most frequently is $top_word"

