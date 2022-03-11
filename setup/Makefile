SHELL=/bin/bash

default:
	@echo "usage: make help"
base:
	@sudo apt install -y tree
git:
	@mkdir -p ~/bin
	@rm -f ~/bin/git-prompt.sh ~/bin/git-completion.bash
	@wget -P ~/bin https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
	@wget -P ~/bin https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
python:
	sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
	curl https://pyenv.run | bash
nvm:
	curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
docker:
	sudo apt install -y ca-certificates curl gnupg lsb-release
	sudo rm -f /usr/share/keyrings/docker-archive-keyring.gpg
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	sudo rm -f /etc/apt/sources.list.d/docker.list
	echo "deb [arch=$$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
	sudo apt update
	sudo apt install -y docker-ce docker-ce-cli containerd.io
	sudo service docker restart
	sleep 1
	sudo docker run hello-world > /dev/null
	sudo usermod -g docker $$(whoami)
	sudo chgrp docker /var/run/docker.sock
	sudo service docker restart
	@echo "*** Please, logout ***"
