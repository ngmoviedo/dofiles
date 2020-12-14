function paclean
sudo pacman -Scc
yay -Scc --aur
sudo pacman -Qttdq | sudo pacman -Rns -
end
