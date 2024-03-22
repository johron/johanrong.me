#!/usr/bin/sh

curl --fail --location --progress-bar --output "/tmp/mydo.tar" "https://github.com/johron/mydo/releases/latest/download/mydo.tar"
tar -xf /tmp/mydo.tar -C $HOME
chmod +x $HOME/.mydo/bin/mydo
echo 'export PATH="$HOME/.mydo/bin:$PATH"' >> ~/.bashrc
echo "Installed mydo successfully."
