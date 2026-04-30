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
# install node 26 and set it as the global default
mise use --global node@26

# Augment CLI
npm install -g @augmentcode/auggie
