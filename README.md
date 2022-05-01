# REBOOT POUR LINUX

---

## INSTALLER .BASHRC
Le fichier se trouve à la racine (.bashrc), à mettre dans votre poste de travail: ~/

## PREMIERES INSTRUCTIONS: 
### ÇA A L'AIR DE RIEN MAIS C'EST IMPORTANT
- sudo apt-get update
### JE NE ME RAPPEL PLUS C'EST QUOI "gnome-tweaks"....
- sudo apt install gnome-tweaks vim curl
### vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
---
=> [other instructions here](https://www.how2shout.com/linux/3-ways-install-visual-studio-code-in-ubuntu-using-terminal/)
### REBOOTING (LINUX's RUFUS ALTERNATIVES)
- listes de logiciels de démarrage USB pour Linux:
=> [squadguide](https://squadguide.net/fr/rufus-alternatives-8-meilleurs-logiciels-de-demarrage-usb-pour-linux)
=> [alternativeto](https://alternativeto.net/software/rufus/?platform=linux)
=> [technewstoday](https://www.technewstoday.com/rufus-alternatives-linux-mac/)
- ventoy: 
=> [download link](https://alternativeto.net/software/rufus/?platform=linux): 
=> et les [instructions](https://squadguide.net/fr/rufus-alternatives-8-meilleurs-logiciels-de-demarrage-usb-pour-linux#8_Ventoy), ou dans le readme présent dans le dossier téléchargé.
=> Une fois la commande lancée (sudo sh Ventoy2Disk.sh { -i | -I | -u } /dev/sdX   sdX is the USB device, for example /dev/sdb.), il ne reste plus qu'à copier l'ISO dans le périphérique et le tour est joué (l'iso est alors monté sur la clé !)
### WEBDEV ENVIRONMENT
- sudo apt install git-all nodejs npm virtualbox virtualbox-ext-pack
### UX ENVIRONMENT
- sudo apt install xfce4-clipman-plugin 
=> [lien source](https://doc.ubuntu-fr.org/presse-papier)
=> [lien ver "clipman usage advises"](https://www.grimoire-command.es/2019/xfce4-clipman_usage.html)
=> [d'autre outils de presse-papiers...si jamais](https://www.google.com/search?q=xfce+clipman+comment+afficher+l%27historique&sxsrf=ALeKk02og3F03ALVxYdbMCQ3ukc8qSVKig%3A1621843303157&ei=Z12rYK6ACfTggweBiYLABA&oq=xfce+clipman+comment+afficher+l%27historique&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsANQ2fUXWNmaGGCunRhoBHACeACAAXmIAYkHkgEEMTAuMZgBAKABAaoBB2d3cy13aXrIAQjAAQE&sclient=gws-wiz&ved=0ahUKEwjuz9yP7eHwAhV08OAKHYGEAEgQ4dUDCA4&uact=5)
- (pas encore regardé vraiment..) ??pour lire et écrire le japonais??: [wiki](https://fr.wikibooks.org/wiki/Lire_et_%C3%A9crire_le_japonais_sous_Debian)
=> Sinon utiliser l'installation proposée par l'OS dans 'méthode de saisie'
### SOFTWARES ENVIRONMENT
- sudo apt-get install qbittorrent
- sudo apt install gnome-control-center gnome-online-accounts
then, XDG_CURRENT_DESKTOP=GNOME gnome-control-center, aller sur comptes en ligne, choisir google, s'identifier et c'est fini
=> [lien source](https://www.linuxuprising.com/2018/07/mounting-google-drive-on-xfce-or-mate.html)
##### logiciels de retouche vidéo
- sudo apt install handbrake shotcut 
##### en utilisant la logitèque (.......contenu à modifier, pas pertinent..)
teams, zoom, skype, vscode,  qtorrent
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
wget https://zoom.us/client/latest/zoom_amd64.deb
apt install ./teams_1.3.00.5153_amd64.deb ./zoom_amd64.deb 

# INSTALLER LAMP: 
- sudo apt install apache2 mysql-server php php-cli libapache2-mod-php php-mysql
- sudo mysql_secure_installation
- sudo nano /etc/apache2/mods-enabled/dir.conf
- sudo systemctl restart apache2
ou sudo systemctl status apache2
- apt search php- | less

(https://www.digitalocean.com/community/tutor qials/comment-installer-la-pile-linux-apache-mysql-php-lamp-sur-un-serveur-ubuntu-18-04-fr)




## ASTUCES (ux):
- afficher les fichiers/dossiers cachés => dans le dossier, faire: Ctrl+h
## ASTUCES (bash):
- voir la corbeille: ls -a ~/.Trash
=> supprimer le contenu de la corbeille: rm -r ~/.Trash
=> autre lien concernant la [corbeille](https://forum.ubuntu-fr.org/viewtopic.php?id=12650)
- lister les périphérique du pc: lsblk
- formater un périphérique:
=> [mkfs](https://www.malekal.com/mkfs-formater-et-creer-un-systeme-de-fichiers-ext4-ntfs-fat-sur-linux/)




