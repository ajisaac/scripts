# starter programs
echo "Installing programs\n"
sudo apt-get install neovim rsync git qemu-guest-agent zsh tldr openjdk-21-jdk cifs-utils

# run the guest agent
echo "Starting guest agent\n"
sudo systemctl start qemu-guest-agent
sudo systemctl enable qemu-guest-agent

# set up Zsh
echo "Setting up Zsh\n"
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/ajisaac/server-setup/main/.zshrc > ~/.zshrc

# copy the dotfiles into appropriate place
