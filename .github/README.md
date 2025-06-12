# How to properly install this repository on a new machine

## add the dotfile alias in the bashrc file

```bash
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles-bare-repo --work-tree=$HOME"
```

## clone the repository

```bash
git clone --bare https://github.com/pdicerbo/dotfiles.git $HOME/.dotfiles-bare-repo
```

if this command fails, is because some files are already present in the home directory. (Re)Move the files and try again.
