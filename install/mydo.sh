#!/usr/bin/env bash

curl --fail --location --progress-bar --output "/tmp/mydo.tar" "https://github.com/johron/mydo/releases/latest/download/mydo.tar" ||
    echo "Error: Was not able to donwload mydo from \"$dl_uri\""

tar -xf "/tmp/mydo.tar" -C $HOME ||
    echo 'Error: Failed to extract'
    
chmod +x "$HOME/.mydo/bin/mydo" ||
    echo 'Error: Failed to set permissions on mydo executable'

rm "/tmp/mydo.tar"

echo "mydo was installed successfully"
echo "Run 'mydo help' to get started"

to_export='export PATH="$HOME/.mydo/bin:$PATH"'
if grep -q "$to_export" ~/.bashrc; then
  echo "mydo was already added to \$PATH, skipping"
else
  echo $to_export >> ~/.bashrc
  echo "Added mydo to \$PATH"
fi