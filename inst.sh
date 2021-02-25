#download nteract and install sudo dpkg -i nteract_0.28.0_amd64.deb 
#install asdf manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
. $HOME/.asdf/asdf.sh
asdf plugin add julia
#install julia ver
asdf install julia 1.5.3
#set it as global
asdf global julia 1.5.3

#once in terminal
#] for pck mode
#add IJulia
#using Pkg
#Pkg.build("IJulia")
#to install 1.0 Julia
sudo snap install julia --classic