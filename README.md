# dotfiles

This repository contains the dotfiles I use to configure my system.

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
git clone git@github.com/dreamsofautonomy/dotfiles.git
cd dotfiles
```

Second, use GNU stow to create symlinks.

```bash
stow .
```