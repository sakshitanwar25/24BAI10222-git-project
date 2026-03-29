#!/bin/bash
echo "--- Open Source Manifesto Creator ---"
read -p "Favorite OS Tool: " TOOL
read -p "What does 'Open' mean to you? " MEANING
read -p "What will you contribute back? " CONTRIB

DATE=$(date +'%d %B %Y')
FILE="manifesto_$(whoami).txt"

echo "On this day, $DATE, I declare my support for $TOOL." > $FILE
echo "To me, software freedom is $MEANING." >> $FILE
echo "I commit to sharing $CONTRIB with the world." >> $FILE

echo "Your manifesto is ready in $FILE"
cat $FILE
