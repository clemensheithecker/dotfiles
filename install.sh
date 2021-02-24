#!/bin/zsh
DOTFILES=$HOME/.dotfiles
BACKUP=$HOME/dotfiles-backup

# Clone the repository with the --bare flag
git clone --bare git@github.com:clemensheithecker/dotfiles.git $DOTFILES

# Define an alias which sets the .git directory to $DOTFILES and the
# working tree to $HOME
alias gitdf="git --git-dir=$DOTFILES --work-tree=$HOME"

# Update the working tree and check for a potential error of inability
# to overwrite pre-existing dotfiles
if gitdf checkout; then
    echo "Checked out dotfiles."
else
    echo "Backing up pre-existing dotfiles..."
    mkdir -p $BACKUP
    gitdf checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} $BACKUP/{}
    gitdf checkout
    echo "Checked out dotfiles."
fi

# Disable showing untracked files for gitdf status
gitdf config status.showUntrackedFiles no