# install nix
curl -L https://nixos.org/nix/install | sh --no-daemon


# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install plugins
nix-env -iA \
	nixpkgs.antibody \
    nixpkgs.fzf \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.xclip \
	nixpkgs.xsel \
	nixpkgs.tmux \
	nixpkgs.neovim \
	nixpkgs.stow \
    nixpkgs.tree

# stow all packages
stow zsh
stow nvim
stow git
stow tmux

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# install nvm and npm lts
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts

# install gvm and go1.23.3
bash < <(curl -sSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4 -B
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.17.13 -B
gvm use go1.17.13
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.23.3 -B
gvm use go1.23.3

# install conda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

