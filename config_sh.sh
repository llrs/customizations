# Some friendly alias
alias o="xdg-open"
alias rs="rstudio *.Rproj &"
# Add human readable size info
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias ssh='ssh -X'
alias config='gedit ~/.config/config_sh.sh &'

# Telling git to sign commits
# From: https://docs.github.com/en/github-ae@latest/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
export GPG_TTY=$(tty)


projects() {
    cd ~/Documents/projects/$1
}

# Auto-launching ssh-agent 
# Not sure if needed
# From: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env

