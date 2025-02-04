- AVANTS PROPOS: 
    - pour voir les modules supplémentaires qui peuvent être installés: apt search php- | less
    - pour avoir plus d'info sur le module en question:    apt show mysql





- LANGUES: 
    - japonais: - (pas encore regardé vraiment..) ??pour lire et écrire le japonais??: [wiki](https://fr.wikibooks.org/wiki/Lire_et_%C3%A9crire_le_japonais_sous_Debian)
=> Sinon utiliser l'installation proposée par l'OS dans 'méthode de saisie', qui une fois installé indique d'aller ajouter la méthode de saisie Mozc dans  l'écran de configuration de Fcitx





- SOURCES: 
    - ???
        - sudo add-apt-repository ppa:obsproject/obs-studio     
    - snapd 
        * https://doc.ubuntu-fr.org/snap#installer_snapd
        * Linux Mint bloque par défaut snap: https://sites.google.com/site/installationubuntu/home/linux-mint-21-1-vanessa/install-snap
        * La doc de snapd: https://snapcraft.io/docs/interface-managementa 
        * ...---...
        * authoriser l'installation de snapd sur >mint20: https://www.numetopia.fr/comment-installer-des-paquets-snap-sur-linux-mint/
        ou bien exécuter dans terminal: 
        sudo mv /etc/apt/preferences.d/nosnap.pref /etc/apt/preferences.d/nosnap.pref.bak
        sudo apt install snapd
        sudo reboot
        puis éventuellement installer le gestionnaire graphique de snap: "sudo snap install snap-store"
    - ppa

    - flatpak (présent par défaut)
        - flatpak install flathub com.mongodb.Compass flathub com.getpostman.Postman
        - flatpak: https://doc.ubuntu-fr.org/flatpak      ou      logitheque flatpak: https://flathub.org/apps
        ou bien exécuter dans terminal: 
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    - SI SNAP NE MARCHE PAS
        - vscode: 
            wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
            sudo install -D -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings
            echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null





- TERMINAL: 
    - APT INSTALL: 
        - sudo apt-get update
        - sudo apt-get upgrade
        - sudo apt install code git-all virtualbox virtualbox-ext-pack qbittorrent gnome-control-center gnome-online-accounts vim curl xfce4-clipman-plugin 
        - sudo apt install apache2 libapache2-mod-php libmysqlclient-dev mysql_secure_installation  mysql-server  php-mysql php php-cli mysql-client python3 python3-pip ruby-full
            mysql: https://www.ionos.com/digitalguide/server/know-how/use-mysql-with-ruby-on-rails/
                mysql-server: Ce package contient le serveur MySQL, c'est-à-dire le logiciel qui gère les bases de données. Il permet de créer, de modifier et de supprimer des bases de données, des tables, des utilisateurs, etc. C'est le package essentiel si vous souhaitez héberger vos propres bases de données MySQL.
                php-mysql: Ce package est une extension pour le langage de programmation PHP. Il permet à PHP de communiquer avec les serveurs MySQL. Il est indispensable si vous développez des applications web en PHP qui interagissent avec une base de données MySQL.
                mysql-client: Ce package contient le client MySQL, un outil en ligne de commande qui permet d'interagir avec les serveurs MySQL. Il est utile pour exécuter des requêtes SQL directement dans le terminal, pour administrer les bases de données, etc.
                libmysqlclient-dev: Ce package contient les fichiers d'en-tête et les bibliothèques de développement nécessaires pour compiler des applications qui utilisent la bibliothèque cliente MySQL. Il est indispensable si vous développez des applications en C ou en C++ qui se connectent à une base de données MySQL.
            ruby: https://www.ruby-lang.org/en/documentation/installation/          https://www.brightbox.com/docs/ruby/ubuntu/
            clipboard: 
                => [lien source](https://doc.ubuntu-fr.org/presse-papier)
                => [lien ver "clipman usage advises"](https://www.grimoire-command.es/2019/xfce4-clipman_usage.html)
                => [d'autre outils de presse-papiers...si jamais](https://www.google.com/search?q=xfce+clipman+comment+afficher+l%27historique&sxsrf=ALeKk02og3F03ALVxYdbMCQ3ukc8qSVKig%3A1621843303157&ei=Z12rYK6ACfTggweBiYLABA&oq=xfce+clipman+comment+afficher+l%27historique&gs_lcp=Cgdnd3Mtd2l6EAM6BwgAEEcQsANQ2fUXWNmaGGCunRhoBHACeACAAXmIAYkHkgEEMTAuMZgBAKABAaoBB2d3cy13aXrIAQjAAQE&sclient=gws-wiz&ved=0ahUKEwjuz9yP7eHwAhV08OAKHYGEAEgQ4dUDCA4&uact=5)
        - sudo apt install gimp handbrake shotcut obs-studio 
        - sudo apt install gnome-tweaks 
            
    - DEVELOPMENT
        * NodeJS 
            - (à tester (04/01/2025)):
                curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/stable/install.sh | bash
                nvm install --lts
                node -v
            - https://nodejs.org/en/download
                curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
                nvm install 22
            - (???) sudo apt-get install -y nodejs
        * yarn et pnpm:
            sudo npm i -g yarn pnpm nodemon liveserver localserver prisma mongodb apollo sass
    - NPM: 
    - npm install -g localserver sass prisma mongodb nodemon apollo
    - FLATPAK: 
    - SNAP: 
        sudo snap install code --classic 
        sudo snap install zoom-client 
        sudo snap install skype --classic
//////////teams-for-linux whatsapp-for-linux pyqt5-runtime-core20 4ktube mysql-workbench-community redis redis-tools//////////
//////////sudo apt-get install ubuntu-restricted-extras//////////
    - GEMS: 
        sudo gem install rails mysql2
        => installer les gems d'un projet: bundle install
        https://learn.microsoft.com/fr-fr/azure/app-service/quickstart-ruby?tabs=cli#run-the-application-locally
        => lancer le server rails d'un projet: bundle exec rails server        ou            rails server
        https://learn.microsoft.com/fr-fr/azure/app-service/quickstart-ruby?tabs=cli#run-the-application-locally





- EXPLORATEUR DE FICHIERS: 
    - SSH: 
        - ssh-keygen 
        - dézippé l'archive ssh.tar
            renommer son contenu en ".ssh"
            puis, le copié-coller dans ~/ 
            enfin, définir le fichier id_rsa avec: chmod 600 
    - BASHRC: 
        Le fichier se trouve à la racine (.bashrc), à mettre dans votre poste de travail: ~/
    - gnome-disk: https://doc.ubuntu-fr.org/tutoriel/formater_une_cle_usb#:~:text=Si%20vous%20souhaitez%20formater%20compl%C3%A8tement,formater%22%20efface%20toutes%20vos%20donn%C3%A9es%20!
- les raccourcis de tous les comptes chrome
    - LAMP: 
        - sudo nano /etc/apache2/mods-enabled/dir.conf
        - puis, déplacer l'occurrence "index.php" à la première position après la spécification DirectoryIndex
        - sudo systemctl restart apache2
            ou sudo systemctl status apache2
        - le dossier de travail se trouve à: /var/www/html/
        - puis il suffira juste de lancer "localhost" dans le navigateur
        - commandes utiles: => redémarer server: 
            - sudo service apache2 restart      
                ou       sudo systemctl restart apache2

        
        
        
        
- CLONE REPO: 
    - kbsc: https://github.com/webdev-archist/vscode_snippets_keybordSC_etc




- VSCODE PLUGINS: 
    - code --install-extension cweijan.vscode-mysql-client2 chris-noring.graphql-snippets code4mk.apollo-graphql-snippets GraphQL.vscode-graphql 




- LOGITÈQUE: 
    - jdownloader
        - => https://www.edrawsoft.com/download-edrawmind.html#linux
        - wget https://dl.4kdownload.com/app/4kvideodownloader_4.21.1-1_amd64.deb?source=website
        - wget https://download.edrawsoft.com/archives/edrawmind_9.0.10_en_x86_64.deb?_gl=1*kpwdky*_ga*NTU3Mzc2MDY4LjE2NTcyNDc5NTg.*_ga_24WTSJBD5B*MTY1NzI0Nzk1OC4xLjEuMTY1NzI0ODU0Ni42MA..&_ga=2.18566073.1423041095.1657247958-557376068.1657247958




- CHROME: 





- REPOSITORIES TO CLONE: 

    



- ENVIRONMENT
 - IDEs:
    * VSCode: 
        * doc code:  https://code.visualstudio.com/docs/setup/linux
        * wikiubuntu: https://doc.ubuntu-fr.org/visual_studio_code
    * Cursor: 
        * dl: https://dev.to/mhbaando/how-to-install-cursor-the-ai-editor-on-linux-41dm
        * installation tuto: https://dev.to/mhbaando/how-to-install-cursor-the-ai-editor-on-linux-41dm
   
    * Windsurf: 
        * dl: https://codeium.com/windsurf/download_linux
        * diretement dans terminal:
            - curl -fsSL "https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/windsurf.gpg" | sudo gpg --dearmor -o /usr/share/keyrings/windsurf-stable-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/windsurf-stable-archive-keyring.gpg arch=amd64] https://windsurf-stable.codeiumdata.com/wVxQEIWkwPUEAGf3/apt stable main" | sudo tee /etc/apt/sources.list.d/windsurf.list > /dev/null
            - sudo apt-get update
            - sudo apt-get upgrade windsurf
 - CLIPBOARD TOOLS:
    * À VÉRIFIER!!!: (j'ai choisi "copyQ" cette fois (je n'ai pa trouvé ce que j'avais installé dans les précédentes installes ...... meme s'il me semble que c'était bien "xfce4-clipman" :S), i added the preference shortcut "Afficher le menu de la zone de notifications" to "ctrl+;")
    * d'autres options: clipit, diodonn parcelitte
    * check this one later: https://github.com/Slackadays/clipboard/ and its video https://www.youtube.com/watch?v=SOtLR6qBb90&ab_channel=BrodieRobertson
 - JAPONAIS: "Gestionnaire de paramètres", "méthode de saisie", choisir "japonais", puis cliquer sur "installer". Enfin, si'il n'est pas possible de naviguer entre les langues avec "ctrl+space", cette fois-ci ce que j'ai fais qui a fonctionné c'est: clique-droit sur l'icone de méthode de saisie dans la barre des taches (bas-droit)n cliquer "configurer méthode de saisie actuelle", puis cliquer sur le dernier icone dans le cadre bas-gauche, et choisir une langue par défaut (francais)
 - GDRIVE: J'utilise pour l'instant une solution lente mais qui fonctionne facilement: => [lien source](https://www.linuxuprising.com/2018/07/mounting-google-drive-on-xfce-or-mate.html)
    * la solution gdrive installée PLUS HAUT (sudo apt install gnome-control-center gnome-online-accounts), implique de taper dans le terminal: "XDG_CURRENT_DESKTOP=GNOME gnome-control-center", ce qui va ouvrir une fenetre, puis permettre d'y recherche l'onglet "comptes en ligne"", choisir google, s'identifier et c'est fini
    * Autres alternatives drive: 
        - ubuntu doc: https://doc.ubuntu-fr.org/google_drive
        - google research: https://www.google.com/search?q=google+drive+ocalmfuse&oq=google+drive+ocalmfuse&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIHCAEQABiABDIHCAIQABiABDIHCAMQABiABDIHCAQQABiABDIHCAUQABiABDIHCAYQABiABDIHCAcQABiABDIHCAgQABiABDIHCAkQABiABNIBCTEzMDkxajBqN6gCALACAA&sourceid=chrome&ie=UTF-8


- BASH
 - ssh: 
    * copier-coller l'archive ssh du repo vers "/bin"
    * ensuite restreindre les droits sur le fichier id_rsa (en utilisant chmod 644 nom_du_fichier) 
        * en allant à "/home/your_pseudo_machine/.ssh", 
        * puis en faisant: "chmod 600 id_rsa"
    * la commande "stat -c %a nom_du_fichier" permet de voir les droits d'un fichier en nombre (c'est l'alternative de "ls -al")
 - google drive: 
    * sudo apt install
    
- LINUX PREFERENCES



install mongodb locally: 
- https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-debian/





- INSTALLER GCLOUD POUR GOOGLE CLOUD REPOSITORIES
    - bon , il y a plein de truc à faire, je n'ai pas encore vraiment compris comment tout marche, mais une erreur s'est produite dans le terminal, m'empechant d'utiliser apt-get.
    => du coup je viens de trouver la solution etje la sauvegarde, au moins ça c'est fait!
    - comment rétablir apt-get: https://stackoverflow.com/questions/56679191/apt-get-is-broken-after-install-google-cloud-sdk-on-ubuntu-18-04-lts#answer-56705181




- REBOOTING (LINUX's RUFUS ALTERNATIVES)
    - listes de logiciels de démarrage USB pour Linux:
    => [squadguide](https://squadguide.net/fr/rufus-alternatives-8-meilleurs-logiciels-de-demarrage-usb-pour-linux)
    => [alternativeto](https://alternativeto.net/software/rufus/?platform=linux)
    => [technewstoday](https://www.technewstoday.com/rufus-alternatives-linux-mac/)
    - ventoy: 
    => [download link](https://alternativeto.net/software/rufus/?platform=linux): 
    => et les [instructions](https://squadguide.net/fr/rufus-alternatives-8-meilleurs-logiciels-de-demarrage-usb-pour-linux#8_Ventoy), ou dans le readme présent dans le dossier téléchargé.
    => Une fois la commande lancée (sudo sh Ventoy2Disk.sh { -i | -I | -u } /dev/sdX   sdX is the USB device, for example /dev/sdb.), il ne reste plus qu'à copier l'ISO dans le périphérique et le tour est joué (l'iso est alors monté sur la clé !)
    
