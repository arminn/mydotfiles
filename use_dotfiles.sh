#!/bin/bash

# Get current date
current_date=$(date +%Y%m%d)

# Check for ~/.tmux.conf file
if [ -f ~/.tmux.conf ]; then
    echo "~/.tmux.conf exists."
    mv ~/.tmux.conf ~/.tmux.conf_backup_${current_date}
    echo "~/.tmux.conf moved to ~/.tmux.conf_backup_${current_date}"
fi

# Check for ~/.tmux directory
if [ -d ~/.tmux ]; then
    echo "~/.tmux directory exists."
    mv ~/.tmux ~/.tmux_backup_${current_date}
    echo "~/.tmux moved to ~/.tmux_backup_${current_date}"
fi

cp ./.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
