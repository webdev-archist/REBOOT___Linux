# REBOOT POUR LINUX

---

## PREMIERES INSTRUCTIONS: 
### ÇA A L'AIR DE RIEN MAIS C'EST IMPORTANT
- sudo apt-get update
- sudo apt-get upgrade
### INSTALLER .BASHRC
Le fichier se trouve à la racine (.bashrc), à mettre dans votre poste de travail: ~/

---

## WEBDEV ENVIRONMENT

### SOFTWARES: 
- sudo apt install virtualbox virtualbox-ext-pack qbittorrent gnome-control-center gnome-online-accounts
- then, XDG_CURRENT_DESKTOP=GNOME gnome-control-center, aller sur comptes en ligne, choisir google, s'identifier et c'est fini
=> [lien source](https://www.linuxuprising.com/2018/07/mounting-google-drive-on-xfce-or-mate.html)
#### vscode: 
- wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
- voici le repo des snippets et kbsc: https://github.com/webdev-archist/vscode_snippets_keybordSC_etc
=> [other instructions here](https://www.how2shout.com/linux/3-ways-install-visual-studio-code-in-ubuntu-using-terminal/)
#### logiciels de retouche vidéo: 
- sudo apt install handbrake shotcut OBS_Studio
#### ux environment: 
- sudo apt install xfce4-clipman-plugin 
=> [lien source](https://doc.ubuntu-fr.org/presse-papier)
=> [lien ver "clipman usage advises"](https://www.grimoire-command.es/2019/xfce4-clipman_usage.html)
=> [d'autre outils de presse-papiers...si jamais](https://www.google.com/search?q=xfce+clipman+comment+afficher+l%27historique&sxsrf=ALeKk02og3F03ALVxYdbMCQ3ukc8qSVKig%3A1621843303157&ei=Z12rYK6ACfTggweBiYLABA&oq=xfce+clipman+comment+afficher+l%27historique&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsANQ2fUXWNmaGGCunRhoBHACeACAAXmIAYkHkgEEMTAuMZgBAKABAaoBB2d3cy13aXrIAQjAAQE&sclient=gws-wiz&ved=0ahUKEwjuz9yP7eHwAhV08OAKHYGEAEgQ4dUDCA4&uact=5)
- (pas encore regardé vraiment..) ??pour lire et écrire le japonais??: [wiki](https://fr.wikibooks.org/wiki/Lire_et_%C3%A9crire_le_japonais_sous_Debian)
=> Sinon utiliser l'installation proposée par l'OS dans 'méthode de saisie'
#### en utilisant la logitèque (.......contenu à modifier, pas pertinent..): 
steam????
whatsapp????
teams, zoom, skype, vscode, jdownloader, 4kdownload, obs studio, 
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
wget https://zoom.us/client/latest/zoom_amd64.deb
wget https://download.edrawsoft.com/archives/edrawmind_9.0.10_en_x86_64.deb?_gl=1*kpwdky*_ga*NTU3Mzc2MDY4LjE2NTcyNDc5NTg.*_ga_24WTSJBD5B*MTY1NzI0Nzk1OC4xLjEuMTY1NzI0ODU0Ni42MA..&_ga=2.18566073.1423041095.1657247958-557376068.1657247958
=>https://www.edrawsoft.com/download-edrawmind.html#linux
wget https://dl.4kdownload.com/app/4kvideodownloader_4.21.1-1_amd64.deb?source=website
apt install ./teams_1.3.00.5153_amd64.deb ./zoom_amd64.deb 
### JAVASCRIPT: 
#### nodejs: 
- sudo apt install git-all nodejs npm 
- concernant le dossier ssh, le dézippé, puis le copié-coller dans ~/, enfin définir le fichier id_rsa avec: chmod 600
#### yarn: 
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
### LAMP: 
(https://www.digitalocean.com/community/tutorials/comment-installer-la-pile-linux-apache-mysql-php-lamp-sur-un-serveur-ubuntu-18-04-fr)
- sudo apt install apache2 mysql-server php php-cli libapache2-mod-php php-mysql
- sudo mysql_secure_installation
- sudo nano /etc/apache2/mods-enabled/dir.conf
- sudo systemctl restart apache2
ou sudo systemctl status apache2
- apt search php- | less
### PYTHON: 
- sudo apt install python3 python3-pip
### JE NE ME RAPPEL PLUS C'EST QUOI "gnome-tweaks"....
- sudo apt install gnome-tweaks vim curl

---

## INSTALLER GCLOUD POUR GOOGLE CLOUD REPOSITORIES

bon , il y a plein de truc à faire, je n'ai pas encore vraiment compris comment tout marche, mais une erreur s'est produite dans le terminal, m'empechant d'utiliser apt-get.
=> du coup je viens de trouver la solution etje la sauvegarde, au moins ça c'est fait!
- comment rétablir apt-get: https://stackoverflow.com/questions/56679191/apt-get-is-broken-after-install-google-cloud-sdk-on-ubuntu-18-04-lts#answer-56705181

---

## REBOOTING (LINUX's RUFUS ALTERNATIVES)
- listes de logiciels de démarrage USB pour Linux:
=> [squadguide](https://squadguide.net/fr/rufus-alternatives-8-meilleurs-logiciels-de-demarrage-usb-pour-linux)
=> [alternativeto](https://alternativeto.net/software/rufus/?platform=linux)
=> [technewstoday](https://www.technewstoday.com/rufus-alternatives-linux-mac/)
- ventoy: 
=> [download link](https://alternativeto.net/software/rufus/?platform=linux): 
=> et les [instructions](https://squadguide.net/fr/rufus-alternatives-8-meilleurs-logiciels-de-demarrage-usb-pour-linux#8_Ventoy), ou dans le readme présent dans le dossier téléchargé.
=> Une fois la commande lancée (sudo sh Ventoy2Disk.sh { -i | -I | -u } /dev/sdX   sdX is the USB device, for example /dev/sdb.), il ne reste plus qu'à copier l'ISO dans le périphérique et le tour est joué (l'iso est alors monté sur la clé !)

---

## ABOUT SOURCES AND APT-GET
- [lien easylinuxtipsproject](]https://easylinuxtipsproject.blogspot.com/p/sources.html): 
    - xed admin:///etc/apt/sources.list.d/official-package-repositories.list
    - sudo mintupdate-cli upgrade -r


## ASTUCES (linux):
- afficher les fichiers/dossiers cachés => dans le dossier, faire: Ctrl+h
## ASTUCES (bash):
- voir la corbeille: ls -a ~/.Trash
=> supprimer le contenu de la corbeille: rm -r ~/.Trash
=> autre lien concernant la [corbeille](https://forum.ubuntu-fr.org/viewtopic.php?id=12650)
- lister les périphérique du pc: lsblk, ou encore, df
- formater un périphérique:
=> [mkfs](https://www.malekal.com/mkfs-formater-et-creer-un-systeme-de-fichiers-ext4-ntfs-fat-sur-linux/)

## SOUS-TITRES VIDÉO
- http://www.franglish.fr/share/tuto_doubles_sous_titres_franglish.pdf

---

## TEMPORY SOLVES
### PROBLEME DE GRUB

- si un probleme de grub montre le bout de son nez après un reboot où le dual boot ne marcherait plus, utiliser les instructions du lien suivant pour tenter de recouvrir la partition linux(ou win..j'ai pas encore testé, là je n'ai monté qu'un seul disk (sda) et xa a marché, il me faut continuer pour etre certain du fonctionnement de cette méthode !) ainsi perdue: 
=> [lien](https://www.howtogeek.com/114884/how-to-repair-grub2-when-ubuntu-wont-boot/)








