# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
    # activate aws bash command completion if it exists
    if [ -f "/usr/local/bin/aws_completer" ]; then
        complete -C '/usr/local/bin/aws_completer' aws
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
# set PATH so it includes flutter bin if it exists
if [ -d "/opt/flutter/bin" ] ; then
    PATH="/opt/flutter/bin:$PATH"
fi
# set PATH so it includes aws bin if it exists for completion
if [ -d "/usr/local/aws/bin" ] ; then
    PATH="/usr/local/aws/bin:$PATH"
fi
