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
	@sudo apt install -y libffi-dev libssl-dev zlib1g-dev liblzma-dev tk-dev libbz2-dev libreadline-dev libsqlite3-dev libopencv-dev build-essential git
ifeq (,$(wildcard ~/.pyenv))
	@git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	@echo 'export PYENV_ROOT="$$HOME/.pyenv"' >> ~/.bashrc
	@echo 'export PATH="$$PYENV_ROOT/bin:$$PATH"' >> ~/.bashrc
	@echo 'eval "$$(pyenv init --path)"' >> ~/.bashrc
	@echo 'Try: . ~/.bashrc'
endif
