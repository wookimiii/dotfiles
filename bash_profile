if [ -f ~/.bashrc ];
then
  source ~/.bashrc
fi

export NVM_DIR="/Users/akim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# for jra tool
# export JIRA_HOST=jirahost.com
