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


### APT PACKAGES: 
- sudo apt-get update
- sudo apt-get install mysql-client libmysqlclient-dev
=> mysql: https://www.ionos.com/digitalguide/server/know-how/use-mysql-with-ruby-on-rails/

### JAVASCRIPT: 
#### nodejs: 
- nodejs: 
https://github.com/nodesource/distributions#debinstall
Node.js v18.x: 
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
- concernant le dossier ssh, le dézippé, puis le copié-coller dans ~/, enfin définir le fichier id_rsa avec: chmod 600
#### yarn: 
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn
#### pnpm:
https://pnpm.io/installation#using-npm

### RUBY: https://docs.google.com/spreadsheets/d/1Qd4R2oJZmw3Qi5X207j_BldoCBVEAlAKqHrBeXsJXGk/edit#gid=0
https://www.ruby-lang.org/en/documentation/installation/
https://www.brightbox.com/docs/ruby/ubuntu/
- sudo apt-get install ruby-full
=> LEARN RUBY
https://ruby-doc.org/3.2.0/
https://devdocs.io/ruby/
=> youtube grafikart playlist: https://www.youtube.com/playlist?list=PLjwdMgw5TTLVVJHvstDYgqTCao-e-BgA8
=> IDE ruby "rubybmine": https://www.jetbrains.com/ruby/promo/?source=google&medium=cpc&campaign=10112222624&term=rubymine&content=437127374076&gclid=CjwKCAiA5Y6eBhAbEiwA_2ZWIRjdxU4nIxyVDtUu04OIAX79NcvhdEcuxE5zBbcpKsY-lapZSUpYZBoC_VEQAvD_BwE
#### install gems: 
- sudo gem install rails mysql2
=> installer les gems d'un projet: bundle install
https://learn.microsoft.com/fr-fr/azure/app-service/quickstart-ruby?tabs=cli#run-the-application-locally
=> lancer le server rails d'un projet: bundle exec rails server        ou            rails server
https://learn.microsoft.com/fr-fr/azure/app-service/quickstart-ruby?tabs=cli#run-the-application-locally

### npm packages: 
- npm install -g localserver sass prisma mongodb nodemon 

### SOFTWARES: 
- sudo apt install git-all virtualbox virtualbox-ext-pack qbittorrent gnome-control-center gnome-online-accounts vim curl
- then, XDG_CURRENT_DESKTOP=GNOME gnome-control-center, aller sur comptes en ligne, choisir google, s'identifier et c'est fini
=> [lien source](https://www.linuxuprising.com/2018/07/mounting-google-drive-on-xfce-or-mate.html)
- Dev tools
mongodb compass: 
#### vscode: 
- wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
- voici le repo des snippets et kbsc: https://github.com/webdev-archist/vscode_snippets_keybordSC_etc
=> [other instructions here](https://www.how2shout.com/linux/3-ways-install-visual-studio-code-in-ubuntu-using-terminal/)
- Plugins:
  - mysql: https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-mysql-client2
  - graphQL: https://marketplace.visualstudio.com/items?itemName=chris-noring.graphql-snippets
https://marketplace.visualstudio.com/items?itemName=code4mk.apollo-graphql-snippets
https://marketplace.visualstudio.com/items?itemName=GraphQL.vscode-graphql
#### logiciels de retouche vidéo: 
- sudo add-apt-repository ppa:obsproject/obs-studio
- sudo apt install gimp handbrake shotcut obs-studio 
#### ux environment: 
- sudo apt install xfce4-clipman-plugin 
=> [lien source](https://doc.ubuntu-fr.org/presse-papier)
=> [lien ver "clipman usage advises"](https://www.grimoire-command.es/2019/xfce4-clipman_usage.html)
=> [d'autre outils de presse-papiers...si jamais](https://www.google.com/search?q=xfce+clipman+comment+afficher+l%27historique&sxsrf=ALeKk02og3F03ALVxYdbMCQ3ukc8qSVKig%3A1621843303157&ei=Z12rYK6ACfTggweBiYLABA&oq=xfce+clipman+comment+afficher+l%27historique&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsANQ2fUXWNmaGGCunRhoBHACeACAAXmIAYkHkgEEMTAuMZgBAKABAaoBB2d3cy13aXrIAQjAAQE&sclient=gws-wiz&ved=0ahUKEwjuz9yP7eHwAhV08OAKHYGEAEgQ4dUDCA4&uact=5)
- (pas encore regardé vraiment..) ??pour lire et écrire le japonais??: [wiki](https://fr.wikibooks.org/wiki/Lire_et_%C3%A9crire_le_japonais_sous_Debian)
=> Sinon utiliser l'installation proposée par l'OS dans 'méthode de saisie', qui une fois installé indique d'aller ajouter la méthode de saisie Mozc dans  l'écran de configuration de Fcitx
#### autres logs en utilisant apt, snap, ou flatpak: 
- sudo apt install steam-devices
- flatpak: https://doc.ubuntu-fr.org/flatpak      ou      logitheque flatpak: https://flathub.org/apps
ou bien exécuter dans terminal: 
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
- snap: authoriser l'installation de snapd sur >mint20: https://www.numetopia.fr/comment-installer-des-paquets-snap-sur-linux-mint/
ou bien exécuter dans terminal: 
sudo mv /etc/apt/preferences.d/nosnap.pref /etc/apt/preferences.d/nosnap.pref.bak
sudo apt install snapd
sudo reboot
puis éventuellement installer le gestionnaire graphique de snap: "sudo snap install snap-store"
- essayer plutot avec flatpak:
sudo snap install zoom-client
- sudo snap install skype --classic
ou: flatpak install --from https://flathub.org/repo/appstream/com.skype.Client.flatpakref -y
- sudo snap install teams-for-linux
ou: flatpak install https://dl.flathub.org/repo/appstream/com.github.IsmaelMartinez.teams_for_linux.flatpakref -y
- sudo snap install whatsapp-for-linux
- mongodb compass: 
flatpak install flathub com.mongodb.Compass
- postman
flatpak install flathub com.getpostman.Postman
- sudo snap install pyqt5-runtime-core20 ; sudo snap install 4ktube ; sudo apt-get install ubuntu-restricted-extras 
=> https://korben.info/4ktube-telecharger-video.html
- sudo snap install redis redis-tools
=> https://redis.io/commands/
- snap install mysql-workbench-community
#### en utilisant la logitèque (.......contenu à modifier, pas pertinent..):
jdownloader
wget https://download.edrawsoft.com/archives/edrawmind_9.0.10_en_x86_64.deb?_gl=1*kpwdky*_ga*NTU3Mzc2MDY4LjE2NTcyNDc5NTg.*_ga_24WTSJBD5B*MTY1NzI0Nzk1OC4xLjEuMTY1NzI0ODU0Ni42MA..&_ga=2.18566073.1423041095.1657247958-557376068.1657247958
=>https://www.edrawsoft.com/download-edrawmind.html#linux
wget https://dl.4kdownload.com/app/4kvideodownloader_4.21.1-1_amd64.deb?source=website
### LAMP: 
(https://www.digitalocean.com/community/tutorials/comment-installer-la-pile-linux-apache-mysql-php-lamp-sur-un-serveur-ubuntu-18-04-fr)
- sudo apt install apache2 mysql-server php php-cli libapache2-mod-php php-mysql
- (facultatif) sudo mysql_secure_installation
- sudo nano /etc/apache2/mods-enabled/dir.conf
Déplacer l'occurrence "index.php" à la première position après la spécification DirectoryIndex
- sudo systemctl restart apache2
ou sudo systemctl status apache2
- pour voir les modules supplémentaires qui peuvent être installés: 
apt search php- | less
puis pour les installer, un simple:    sudo apt install nom_du_module_php
ou pour avoir plus d'info sur le module en question:    apt show 
- enfin, le dossier de travail se trouve: 
/var/www/html/
il suffira juste de lancer "localhost" dans le navigateur
- commandes utiles: 
=> redémarer server: sudo service apache2 restart      ou       sudo systemctl restart apache2
### PYTHON: 
- sudo apt install python3 python3-pip
### JE NE ME RAPPEL PLUS C'EST QUOI "gnome-tweaks"....
- sudo apt install gnome-tweaks 

---
## PLACER DES RACCOURCI VERS LE BUREAU: 
- gnome-disk: https://doc.ubuntu-fr.org/tutoriel/formater_une_cle_usb#:~:text=Si%20vous%20souhaitez%20formater%20compl%C3%A8tement,formater%22%20efface%20toutes%20vos%20donn%C3%A9es%20!
- les raccourcis de tous les comptes chrome


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
- ouvrir la corbeille: xdg-open ~/.local/share/Trash/files
ls -a ~/.local/share/Trash/files
=> supprimer le contenu de la corbeille: rm -r ~/.local/share/Trash
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








