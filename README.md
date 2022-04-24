# INSTALLER .BASHRC
Le fichier se trouve à la racine (.bashrc), à mettre dans votre poste de travail: ~/

# PREMIERES INSTRUCTIONS: 
- sudo apt-get update
- sudo apt install gnome-tweaks vim curl
- sudo apt install git-all nodejs npm virtualbox virtualbox-ext-pack
- sudo apt install sudo apt-get install qbittorrent
- a partir de "ubuntu software" ou via wget ou encore curl:
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




## ASTUCES:
- afficher les fichiers/dossiers cachés => dans le dossier, faire: Ctrl+h
