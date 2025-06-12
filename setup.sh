#!/bin/bash

set -e

# === CONFIG ===
DOTFILES_DIR="$HOME/dotfiles/vim"
FORCE=false

# Parse arguments
for arg in "$@"; do
  if [[ "$arg" == "--force" ]]; then
    FORCE=true
  fi
done

# === FILES TO SYMLINK ===
declare -A FILES_TO_LINK=(
  ["$HOME/.vimrc"]="$DOTFILES_DIR/.vimrc"
  ["$HOME/.vim"]="$DOTFILES_DIR/.vim"
  ["$HOME/.ideavimrc"]="$DOTFILES_DIR/.ideavimrc"
)

# === FUNCTIONS ===
create_symlink() {
  local link_path="$1"
  local target_path="$2"

  if [ -e "$link_path" ] || [ -L "$link_path" ]; then
    if [ "$FORCE" = false ]; then
      echo "⚠️  $link_path already exists."
      read -p "Do you want to overwrite it? (yes/no): " confirm
      if [[ "$confirm" != "yes" ]]; then
        echo "Skipping $link_path"
        return
      fi
    fi
    echo "Removing existing file or symlink at $link_path"
    rm -rf "$link_path"
  fi

  echo "Linking $link_path -> $target_path"
  ln -s "$target_path" "$link_path"
}

# === MAIN ===
echo "Setting up Vim and IdeaVim configuration symlinks from $DOTFILES_DIR..."
for link in "${!FILES_TO_LINK[@]}"; do
  create_symlink "$link" "${FILES_TO_LINK[$link]}"
done

echo "✅ Done. Symlinks created."
echo "You can now open Vim or IntelliJ to use your dotfiles setup."
echo "(Use --force to skip confirmation prompts.)"

