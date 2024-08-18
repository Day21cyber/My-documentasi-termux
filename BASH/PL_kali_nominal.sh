#bin/bash

#Pembaruan paket pada termux
kalimat=("pembaruan paket")
pkg update -y && pkg upgrade -y

#Penampilan storage dan Sd card 
termux-setup-storage
in -s /storage/8135-111B/ ~/sdcard

#Paket yang harus di Install di termux native
pkg install android-tools wget neofetch curl -y ;
pkg install git bat zsh nano -y ;
pkg install x11-repo -y ;
pkg install tigervnc -y ;
pkg install proot-distro aterm tur-repo firefox -y ;
pkg install code-oss gimp fluxbox feh -y ;
pkg install thunar -y

#penambahan file
touch ~/.zshrc

#instalasi oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#instalasi plugin auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Instalasi Plugin zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#instalasi plugin auto-complete
git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

# Membuat atau mengedit file .zshrc
cat <<EOL >> ~/.zshrc
# Oh My Zsh configuration
export ZSH="\$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting)

source \$ZSH/oh-my-zsh.sh
EOL

#konfigurasi zsh
 
chsh -s $(which zsh)

#install disrto kali linux nominal
wget -O install-nethunter-termux https://offs.ec/2MceZwr
chmod +x install-nethunter-termux

kalimat=("nanti pilihlah no 2")
./install-nethunter-termux

# Loop untuk menulis setiap kalimat
for i in "${kalimat[@]}"
do
   echo "$i"
done
