# MISE
curl https://mise.run/zsh | sh

mkdir -p $HOME/.mise-data
export MISE_DATA_DIR="$HOME/.mise-data"

# dotfiles

cp ./.bashrc $HOME/.bashrc
cp ./.bash_profile $HOME/.bash_profile
cp ./.gitconfig $HOME/.gitconfig
cp ./.zshrc $HOME/.zshrc

# Tasks
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d
sudo mv bin/task /bin/task
cp ./Taskfile.yml /workspaces/
# cp ./docker-containers.sh /workspaces/
# chmod +x /workspaces/docker-containers.sh


# NODE
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 25

# AUGMENT CODE
npm install -g @augmentcode/auggie
