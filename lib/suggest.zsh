#!/usr/bin/env zsh

#Function: suggest_command()
#
#Brief: This function suggests a command from the zsh_history file or the bash_history file depending on which shell you are using.
#
suggest_command(){
    # Check if the user is using zsh or bash
    if [ -n "$ZSH_VERSION" ]; then
        # If the user is using zsh, then use the zsh_history file
        history_file=~/.zsh_history
    elif [ -n "$BASH_VERSION" ]; then
        # If the user is using bash, then use the bash_history file
        history_file=~/.bash_history
    fi

}

suggest_command
