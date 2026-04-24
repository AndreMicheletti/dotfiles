
# dotfiles

cp ./.bashrc $HOME/.bashrc
cp ./.bash_profile $HOME/.bash_profile
cp ./.gitconfig $HOME/.gitconfig


# Tasks
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d
sudo mv bin/task /bin/task
cp ./Taskfile.yml /workspaces/
# cp ./docker-containers.sh /workspaces/
# chmod +x /workspaces/docker-containers.sh
