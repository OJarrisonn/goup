#!/bin/bash

default_path="~/.local/bin"
echo "Where to install goup? (defaults to $default_path)"
read path

# If no input is provided, use the default path
if [ -z "$path" ]; then
    path=$default_path
fi

echo "Installing goup to $path"

curl https://raw.githubusercontent.com/OJarrisonn/goup/master/goup -o "$path/goup" \
    || echo "Failed to download goup, try again later" && exit 1

chmod +x "$path/goup"
$path/goup setup

echo "Restart your shell and make sure \`$path\` is in your PATH"