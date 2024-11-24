sudo apt install ripgrep, fontconfig -y
sudo apt-get install luarocks

sudo apt remove neovim
sudo apt install ninja-build gettext cmake unzip curl -y
git clone --depth 1 --branch v0.10.2 https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
ls
cd build
cpack -G DEB
sudo dpkg -i --force-overwrite  nvim-linux64.deb

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
cd ~/.local/share/fonts 
sudo unzip JetBrainsMono.zip 
sudo rm JetBrainsMono.zip 
sudo fc-cache -fv

sudo mkdir -p ~/.config
cp -rf ./nvim ~/.config/

