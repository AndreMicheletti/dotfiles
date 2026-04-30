# MISE
sudo apt update -y && sudo apt install -y curl
sudo install -dm 755 /etc/apt/keyrings
curl -fSs https://mise.en.dev/gpg-key.pub | sudo tee /etc/apt/keyrings/mise-archive-keyring.asc 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.asc] https://mise.en.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt update -y
sudo apt install -y mise

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
