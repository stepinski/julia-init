#download nteract and install sudo dpkg -i nteract_0.28.0_amd64.deb 
#install asdf manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
. $HOME/.asdf/asdf.sh
asdf plugin add julia
#install julia ver
asdf install julia 1.5.3
