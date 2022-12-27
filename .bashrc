# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export PATH="/home/luisfilipe/baixados/dbeaver:$PATH"
export PATH="/home/luisfilipe/baixados/eclipse:$PATH"
export PATH="/home/luisfilipe/baixados/Postman:$PATH"
export PATH="/home/luisfilipe/.trics:$PATH"
export PS1="\n\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] \$(cat /sys/class/power_supply/BAT1/capacity)% \t \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\] \n$ "
clear

printf "\n"
#printf "   %s\n" "IP ADDR: $(curl ifconfig.me)"
printf "   %s\n" "USER: $(echo $USER)"
printf "   %s\n" "DATE: $(date)"
printf "   %s\n" "UPTIME: $(uptime -p)"
printf "   %s\n" "HOSTNAME: $(hostname -f)"
#printf "   %s\n" "CPU: $(awk -F: '/model name/{print $2}' | head -1)"
#printf "   %s\n" "KERNEL: $(uname -rms)"
#printf "   %s\n" "PACKAGES: $(dpkg --get-selections | wc -l)"
#printf "   %s\n" "RESOLUTION: $(xrandr | awk '/\*/{printf $1" "}')"
#printf "   %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
#printf "\n"

# View Git status.
alias gs='git status'

# Add a file to Git.
alias ga='git add'

# Add all files to Git.
alias gaa='git add --all'

# Commit changes to the code.
alias gc='git commit'

# View the Git log.
alias gl='git log --oneline'

# Create a new Git branch and move to the new branch at the same time. 
alias gb='git checkout -b'

# View the difference.
alias gd='git diff'

# Move to the parent folder.
alias ..='cd ..;pwd'

# Move up two parent folders.
alias ...='cd ../..;pwd'

# Move up three parent folders.
alias ....='cd ../../..;pwd'

# Move to skymed server
alias ss='cd ~/projetos/skymed_server_2.0'

# Move to skymed auth
alias sa='cd ~/projetos/skymed_auth'

# Move to home directory
alias .='cd $HOME'

# Press c to clear the terminal screen.
alias c='clear'

# Press h to view the bash history.
alias h='history'

# Display the directory structure better.
alias tree='tree --dirsfirst -F'

# Make a directory and all parent directories with verbosity.
alias mkdir='mkdir -p -v'

# View the calender by typing the first three letters of the month.

alias jan='cal -m 01 2022'
alias feb='cal -m 02 2022'
alias mar='cal -m 03 2022'
alias apr='cal -m 04 2022'
alias may='cal -m 05 2022'
alias jun='cal -m 06 2022'
alias jul='cal -m 07 2022'
alias aug='cal -m 08 2022'
alias sep='cal -m 09 2022'
alias oct='cal -m 10 2022'
alias nov='cal -m 11 2022'
alias dec='cal -m 12 2022'

# Start Aplication
alias sd='sudo systemctl start docker'
alias dil='docker images'
alias dcl='docker container ls --all'
alias dp='docker ps'

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/luisfilipe/node_modules/serverless/bin:$PATH"


# Load Angular CLI autocompletion.
source <(ng completion script)

 export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# tmux
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux
#fi

