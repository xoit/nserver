ssh-keygen -t ed25519 -C "info@icsteve.com"
ssh-agent -s
setenv SSH_AUTH_SOCK /tmp/ssh-dNXob9mdCoyL/agent.17233
setenv SSH_AGENT_PID 17234 ;
touch ~/.ssh/config
gvim ~/.ssh/config
ssh-add ~/.ssh/id_ed25519
gvim ~/.ssh/id_ed25519.pub
# Add the content to github.com
## Setting->SSH and GPG keys
