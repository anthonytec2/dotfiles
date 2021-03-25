sudo add-apt-repository ppa:aslatter/ppa
sudo apt install -y zsh git curl autojump tmux alacritty
sudo snap instal --classic code
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
ln -s -f `pwd`/.tmux.conf ~/.tmux.conf
ln -s -f `pwd`/.zshrc ~/.zshrc
chsh -s /bin/zsh
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
mkdir -p ~/.local/share/fonts/
unzip FiraCode.zip ~/.local/share/fonts/
rm FiraCode.zip
fc-cache -fv
code --install-extension ms-vscode.cmake-tools 
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools-tools 
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
