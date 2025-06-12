# 📝 Dotfiles: Vim & IdeaVim Setup

This repo contains personalized configuration files for:

- **Vim**
- **IntelliJ's IdeaVim plugin**

It supports a clean, symlink-based setup for portability across machines.

---

## 📁 Contents

```
dotfiles/
├── vim/
│   ├── .vimrc          # Vim configuration file
│   ├── .ideavimrc      # IdeaVim configuration file
│   ├── .vim/           # Vim plugins, autoloads, etc.
│   └── setup.sh        # Setup script to create symlinks
```

---

## ⚙️ What `setup.sh` Does

The script creates symbolic links from your home directory to the version-controlled config files in this repo:

| Target in `$HOME`        | Symlink Source                            |
|--------------------------|-------------------------------------------|
| `~/.vimrc`               | `dotfiles/vim/.vimrc`                     |
| `~/.vim`                 | `dotfiles/vim/.vim`                       |
| `~/.ideavimrc`           | `dotfiles/vim/.ideavimrc`                 |

If any of these files already exist, the script will:

- Prompt you before overwriting them, unless you pass the `--force` flag

---

## 🚀 Setup Instructions

### 1. Clone your dotfiles repository

```bash
git clone git@github.com:yourusername/dotfiles.git ~/dotfiles
```

### 2. Run the setup script

```bash
cd ~/dotfiles/vim
bash setup.sh
```

You will be prompted before overwriting any existing configuration files.

### ✅ To skip confirmation prompts:

```bash
bash setup.sh --force
```

This will automatically remove and replace any conflicting files.

---

## 🧪 After Setup

- Open Vim and run `:PlugInstall` if you use `vim-plug`.
- Open IntelliJ and ensure `.ideavimrc` is being sourced (check `:source ~/.ideavimrc` inside IntelliJ's IdeaVim).

---

## 📦 Compatible Tools

- ✅ Vim or Neovim
- ✅ IntelliJ with the [IdeaVim plugin](https://plugins.jetbrains.com/plugin/164-ideavim)
- ✅ `vim-plug` or any plugin manager you configure in `.vimrc`

---

## 🧹 Uninstall or Reset

To remove the symlinks:

```bash
rm ~/.vimrc ~/.vim ~/.ideavimrc
```

