if [ -f ~/.bashrc ];
then
  source ~/.bashrc
fi

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/akim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export JIRA_HOST=jira.yp.com

# For nextgen ssh on ssvm
ssh-add ~/.ssh/np_rsa
