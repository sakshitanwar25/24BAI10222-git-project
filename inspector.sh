#!/bin/bash
PACKAGE="git"

if dpkg -s $PACKAGE &>/dev/null; then
    echo "Confirmed: $PACKAGE is installed."
    apt-cache show $PACKAGE | grep -E 'Version|License|Description' | head -n 3
else
    echo "Error: $PACKAGE is missing."
fi

case $PACKAGE in
    git) echo "Philosophy: Git enables decentralized collaboration, ensuring no single entity owns the history of progress." ;;
    *) echo "Standard Open Source Utility." ;;
esac
