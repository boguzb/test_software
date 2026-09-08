#!/usr/bin/env bash
set -euo pipefail

repository_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
install_dir=${INSTALL_DIR:-"$HOME/.local/bin"}
command_name=test-software

mkdir -p "$install_dir"
install -m 755 "$repository_dir/bin/$command_name" "$install_dir/$command_name"

echo "Installed $command_name to $install_dir/$command_name"
case ":$PATH:" in
  *":$install_dir:"*) ;;
  *)
    echo
    echo "Add this directory to your shell PATH, then open a new terminal:"
    echo "  echo 'export PATH=\"$install_dir:\$PATH\"' >> ~/.zshrc"
    ;;
esac