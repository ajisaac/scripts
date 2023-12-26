# starter programs
sudo apt-get install neovim rsync git qemu-guest-agent zsh

# set up Zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/ajisaac/server-setup/main/.zshrc > ~/.zshrc

# run the guest agent
sudo systemctl start qemu-guest-agent
sudo systemctl enable qemu-guest-agent

# copy the dotfiles into appropriate place
