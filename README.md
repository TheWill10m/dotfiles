# dotfiles

This repository contains the dotfiles I use to configure my system.

## Table of contents

- [dotfiles](#dotfiles)
  - [Table of contents](#table-of-contents)
  - [Requirements](#requirements)
    - [Git](#git)
    - [Stow](#stow)
  - [Installation](#installation)
  - [Other tools](#other-tools)
    - [tmux](#tmux)
    - [Tmux Plugin Manager (TPM)](#tmux-plugin-manager-tpm)
    - [Tmuxifier](#tmuxifier)
    - [zoxide](#zoxide)

## Requirements

Ensure you have the following installed on your system.

### Git

```bash
apt install git
```

### Stow

Stow is used to create symlinks between the configuration files in this repository and the home directory.

```bash
apt install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git.

```bash
git clone git@github.com:TheWill10m/dotfiles.git
cd dotfiles
```

Second, use GNU stow to create symlinks.

```bash
stow .
```

---

## Other tools

The configuration files in this repository are used by the various tools I have installed on my system. I have many of these below, for reference.

### tmux

Terminal multiplexer, used to have multiple windows and tiles within a terminal, and much more.

Install with package manager.

```bash
apt install tmux
```

### Tmux Plugin Manager (TPM)

Installs and loads tmux plugins.

```bash
git clone https://github.com/tmux-plugins/tpm $XDG_CONFIG_HOME/tmux/plugins/tpm
```

### Tmuxifier

Improves tmux session management and allows for tmux session layouts to be created. This is installed via TPM.

### zoxide

Zoxide is a smart cd command tool.

```bash
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```
