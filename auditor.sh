#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Security & Size Audit"
echo "--------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR | Perms: $PERMS | Size: $SIZE"
    fi
done

# Check Git Config
if [ -f "$HOME/.gitconfig" ]; then
    echo "Git config found at $HOME/.gitconfig with perms: $(ls -l $HOME/.gitconfig | awk '{print $1}')"
fi
