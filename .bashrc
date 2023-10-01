
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias lsal='stat -c "%a" '
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#EXPORTER DES VARIABLES D'ENVIRONNEMENT: 
export VSCODE_KEYBINDINGS=$HOME/Bureau/vscode_snippets_keybordSC_etc/ok.json
export VSCODE_KEYBINDINGS=$HOME/Bureau/vscode_snippets_keybordSC_etc/ok__.json
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# ------------------------------------------------------------------
alias smartgit="~/Téléchargements/smartgit/bin/smartgit.sh"
#POUR SE DÉPLACER DANS L'ARCHITECTURE DE FICHIER ----------------------
alias aptgetup="sudo apt-get update ; sudo apt-get upgrade -y "
alias mk_mapDOM="go_mapDOM ; xdg ; code . ; nw_ & google-chrome http://localhost:9000 "
alias go_="cd /home/mirai/Bureau/WEBPROJECTS/WEBPROJECT__jlpt "
alias go_mapDOM="cd /home/mirai/Bureau/WEBPROJECTS/BOOTSTARTER/_/builders/PROJECTS___mapDOM "
alias go_cjs="cd /home/mirai/Bureau/WEBPROJECTS/PROJECT___BootStarter/_/builders/CJS/ "
alias go_ejlpt="cd /home/mirai/Bureau/WEBPROJECTS/WEBPROJECT__jlpt "
alias go_ocfs="cd /home/mirai/Bureau/dev/OC "
alias go_oc="cd /home/mirai/Bureau/OC_MENTORAT "
alias go_bt="cd /home/mirai/Bureau/WEBPROJECTS/PROJECT___BootStarter "
alias go_tests="cd /home/mirai/Bureau/dev/tests ; code . "
alias go_vs="cd /home/mirai/.vscode "
#NAVIGUER SUR LE WEB
alias chrome="google-chrome "
alias g="chrome "
alias g3000="chrome localhost:3000"
# ------------------------------------------------------------------
#RACCOUCIS DE COMMANDES GÉNÉRALES----------------------------------
alias b="vim ~/.bashrc "
alias bb="vim ~/.bashrc ; sb "
alias sourceb="source ~/.bashrc "
alias sb="sourceb"
alias xdg="xdg-open . "
alias lss="ls -alt "
alias cdd="cd - "
# alias ppp="echo ${$1}"
# alias psgr="ps -aux | grep ${$1} | awk '{print $2}' "
alias psg="ps -aux | grep "
alias psgl="lsof -i:3000 ; lsof -i:9000 "
alias _kp3="echo $(lsof -t -i:3000) "
alias kp3="k $(lsof -t -i:3000) "
alias kp9="k $(lsof -t -i:9000) "
alias kpp="lsof -i:$($1)"
alias k="kill -9  "
alias ai="sudo apt install "
alias mv_wildcard_rename="for x in *.$1; do mv -- "$x" "${x%_done}" done "
#MYSQL SHORTCUTS
alias msql="echo\"POUR CRÉER UN USER AVEC MOT DE PASSE VIDE, LANCER: 'SET GLOBAL validate_password_policy=OFF'; PUIS ENFIN: 'CREATE USER 'my_user'@'localhost' IDENTIFIED BY '';'\" ; sudo mysql -u root -p "
#NODEJS ALIASES
alias c="code . "
alias C="sudo code . --no-sandbox --user-data-dir=/tmp/vscode"
alias c_go_to_user="cd /home/samurai/.config/Code/User/snippets "
alias c_go_to_extensions="cd /home/samurai/.vscode/extensions/ "
alias c_go_to_baseExtensions="cd /usr/share/code/resources/app/extensions/ "
alias cclr="cd ~/.vscode/Code ; rm -rf CachedData ; code --clear-cache "
alias ncat="cat ./package.json "
alias n="npm run "
alias ns="npm run start "
alias _ns="npm run _start "
#alias nsr="npm run start_cra "
alias nsr="export NODE_OPTIONS=--openssl-legacy-provider ; npm run start "
alias nss="npm run sass "
alias nd="npm run dev "
alias nb="npm run build "
alias nw="npm run watch "
alias nw_="npm run watch_ "
alias nr="npm run "
alias ninit="npm init "
alias ny="ninit -y "
alias ni="npm install "
alias nI="npm install -f "
alias nig="sudo npm install -g "
alias nii="npm ci "
alias nr="npm remove "
alias lh="localserver "
alias nls="npm list --depth=0 "
# ------------------------------------------------------------------
# ---------------CODEBASE CREATION----------------------------------
alias okokok="echo \"uuuuuuuuuuuuuuuu $(okok lllll kkkkkkkkkk) \" ; echo \"dsjij\" "
# ------------------------------------------------------------------
# ---------REACT-CODEBASE CREATION----------------------------------
alias rcra="npx create-react-app "
alias rcra_="rcra cra "
alias rnia="ni react-router-dom ; ni prop-types ; ni styled-components "
# ---------CODEBASE CREATION----------------------------------
#LES COMMANDE D'ARCHIVAGE "tar": https://www.sebastien-gandossi.fr/blog/comment-creer-et-extraire-une-archive-tar-tar-gz-tar-bz2-ou-tar-xz
function mkd(){
	mkdir -p "$1" 
	cd "$1" 
}
alias rmd="rm -rf "
alias t_help="echo 'https://fr.wikihow.com/archiver-un-r%C3%A9pertoire-avec-la-commande-%C2%AB-tar-%C2%BB' ; echo 'https://forums.commentcamarche.net/forum/affich-37621996-linux-compresser-decompresser-un-fichier-zip' "
alias t="echo\"tar nom_de_l_archive.tar nom_du_dossier_a_archiver\" ; tar cvf "
alias t_="tar xvf "
alias z="echo 'CMD EXAMPLE: 
zip nom_de_l-archive_zip *....files_&_dirs_to_zip...*' "
alias sep="echo \"----------------\" "
# ------------------------------------------------------------------
#POUR SE DÉPLACER DANS L'ARCHITECTURE DE FICHIER --------------------------
alias bt="go_bt ; xdg ; code . "
alias quizes="go_bt ; cd PROJECTS/PROJECT___Quizes ; xdg ; code . "
alias cjs="go_cjs ; xdg ; code . "
alias ejlpt="go_ejlpt ; xdg ; code . "
alias ejlpt_="go_ejlpt ; xdg ; code . ; npm run sassw "
alias ocwebdevp2="go_oc ; cd P2/HTML5-CSS3 ; code . "
alias ocfs7="go_ocfs ; cd ocr_p7 ; code . "
alias ocfs7_react="ocfs7 ; npm run start "
alias ocfs7_rails="ocfs7 ; cd ./public/server ; rails s "
#IL FAUT SAVOIR COMMENT OUVRIR UN NOUVEL ONGLET DANS LE TERMINAL, PUIS Y LANCER UNE COMMADE "
alias ocfs7___="ocfs7_react ; ocfs7_rails "
# ------------------------------------------------------------------
# ------------------------------------------------------------------
# GIT actions:
alias gcg="git config --global "
alias geditor="gcg core.editor "
alias geditorv="gcg core.editor vim "
alias gtemplate="gcg commit.template "
alias gtemplate_="gcg commit.template ~/.gitcommit_template "
alias gexcludesfile="gcg core.excludesfile ~/.gitignore_global "
# GIT actions:
alias gflow="gb hotfix ; gb develop ; gbdefault "
alias gflow_="gb -m master main ; gb hotfix ; gb develop ; gbdefault "
alias gflow2="gb hotfix ; gb develop ; gb release ; gb features "
alias gflow2="gb -m master main ; gb hotfix ; gb develop ; gb release ; gb features "
alias gfloW="gflow ; gmM ; ghoT ; gdeV "
alias gfloW_="gflow ; gmM_ ; ghoT_ ; gdeV_ "
alias gfloW2="gfloW ; gmM ; ghoT ; gdeV ; greL ; gfeA  "
alias gfloW2_="gfloW ; gmM_ ; ghoT_ ; gdeV_ ; greL_ ; gfeA_ "
alias gi="git init ; npm init -y ; "
alias gi_="git init ; npm init -y ; echo '# TITRE REPO...'>README.md ; gac 'IC' "
alias ginit="gi ; gflow "
alias giniT="gi ; gfloW "
alias giniT_="gi_ ; gfloW "
###RESET
alias gclean="git clean -f -d "
alias _grh="git reset --hard HEAD "
alias _grs="git reset --soft HEAD "
alias _grm="git reset --mixed HEAD "
alias grh="git reset --hard HEAD^ "
alias grH="git reset --hard "
alias grs="git reset --soft HEAD^ "
alias grS="git reset --soft "
alias grm="git reset HEAD^ "
alias grM="git reset  "
alias grh_="git reset --hard HEAD^^ "
alias grs_="git reset --soft HEAD^^ "
alias grm_="git reset HEAD^^ "
###SWITCH
alias gsw="git switch "
alias gsw_="git switch - "
###CHECKOUT
alias gm="git checkout master "
alias gmm="git checkout main "
alias gmM="git checkout main ; gP "
alias gmM_="git checkout main ; gP_ main "
alias gcm="git checkout master "
alias gch="git checkout "
alias gchb="git checkout -b "
alias gdev="git checkout develop "
alias gdeV="git checkout develop ; gP "
alias gdeV_="git checkout develop ; gP_ develop "
alias grel="git checkout release "
alias greL="git checkout release ; gP "
alias greL_="git checkout release ; gP_ release "
alias gfea="git checkout features "
alias gfeA="git checkout features ; gP "
alias gfeA_="git checkout features ; gP_ feature "
alias ghot="git checkout hotfix "
alias ghoT="git checkout hotfix ; gP "
alias ghoT_="git checkout hotfix ; gP_ hotfix "
###FETCH
alias gf="git fetch "
alias gf_="git fetch origin "
###REMOTE
alias gr="git remote -v "
alias grrename="git remote set-url origin "
alias grrename_="git remote set-url "
alias gra="git remote add origin "
alias gra_="git remote add "
alias grao="gra "
alias grr="git remote remove origin "
alias grau="git remote add upstream "
alias grru="git remote remove upstream "
alias grat="git remote add template "
alias grrt="git remote remove template "
###BRANCHES
alias gb="git branch "
alias gbr="echo '!!!LEGACY_COMMENT!!! après cette commande vous devrez utiliser gbr_ pour réinitialiser la branche distante avec le nouveau nom de branhce attribué ici' ; echo 'voici le lien: 
https://fr.w3docs.com/snippets/git/how-to-rename-git-local-and-remote-branches-1.html' ;
echo \"git push origin :old-name new-name \"
echo \"git push origin -u new-name \" 
git branch -m "
alias gbR="git push origin -u "
alias gba="git branch -a "
alias gbd="git branch -D "
alias gb_="git branch --set-upstream-to=origin/main main "
alias gb_m="gb_ "
alias gb_d="git branch --set-upstream-to=origin/develop develop "
alias gb_h="git branch --set-upstream-to=origin/hotfix hotfix "
alias gbdefault="echo 'go this url to see the command: 
https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branches-in-your-repository/changing-the-default-branch' "
alias gbD="git push origin --delete "
alias gball="for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done "
###TAG
alias gt_="echo 'des liens utiles que j'ai glané:
https://devconnected.com/how-to-delete-local-and-remote-tags-on-git/
https://devconnected.com/how-to-list-git-tags/' "
alias gt="git tag "
alias gta="gt "
alias gtl="git tag -l "
alias gtp="gpo "
alias gtr="git tag -d "
alias gtR="gpo --delete "
###STASH
alias gst="git stash"
alias gstl="git stash list"
alias gsta="git stash apply "
#alias gsta="git stash apply stash@{1} "
#alias gsta="git stash apply --index 1 "
alias gsta2="git stash apply stash@{2} "
alias gsta3="git stash apply stash@{3} "
alias gsta4="git stash apply stash@{4} "
alias gstc="git stash clear "
###REBASE
alias greb="git rebase "
alias grebc="ga ; git rebase --continue "
alias greba="git rebase --abort "
alias grebi="git rebase -i HEAD^ "
alias grebi_="git rebase -i HEAD~5 "
alias grebi__="git rebase -i HEAD~10 "
###MERGE
alias gmer="git merge "
alias gmerm="git merge master "
alias gmermm="git merge main "
alias gmer_abort="git merge --abort "
###COMMITS
alias ga="git add . "
alias gc="git commit -m "
alias gcm="git commit "
alias gc_a="git commit --amend "
alias gc_no="git commit --no-edit "
alias gc_ano="git commit --amend --no-edit "
alias gac="ga ; gc "
alias gacp="ga ; gc ; gp "
alias gacpF="ga ; gcm ; gpF "
alias gac_no="ga ; gc "
alias gacm="ga ; gcm "
alias gacmp="gacm ; gp "
alias gacmp_="gacm ; gp_ "
alias gacmP="gacm ; gP "
alias gacmpup="gacm ; gpup "
alias gacmPup="gacm ; gPup "
###CHERRY
alias gchp="git cherry-pick "
alias gchp_="git cherry-pick --continue "
###DIFF
alias gd="git diff "
alias gconf="git diff --name-only --diff-filter=U "
alias grm="git rm "
alias grmc="git rm --cached "
#alias gac_no="ga ; gc_no "
alias gpu="git pull "
alias gpU="git pull --allow-unrelated-histories --strategy-option theirs "
alias gpuo="git pull origin main "
alias gpuod="git pull origin develop "
alias gpuu="git pull upstream main "
alias gpuud="git pull upstream develop"
alias gput="git pull template main "
alias gputd="git pull template develop"
alias gac_a="ga ; gc_a "
alias gac_ano="ga ; gc_ano "
alias gac_anO="ga ; gc_ano ; gP "
alias gac_anoF="ga ; gc_ano ; gp -f "
alias gp="git push "
alias gP="git push -f "
alias gpo="gp origin "
alias gpF="gP "
alias gp_="git push --set-upstream origin "
alias gP_="git push --set-upstream origin -f "
alias gp_m="git push --set-upstream origin main "
alias gP_m="git push --set-upstream origin main -f "
alias gp_d="git push --set-upstream origin develop "
alias gP_d="git push --set-upstream origin develop -f "
alias gp_h="git push --set-upstream origin hotfix "
alias gP_h="git push --set-upstream origin hotfix -f "
alias gp_f="git push --set-upstream origin feature "
alias gP_f="git push --set-upstream origin feature -f "
alias gp_r="git push --set-upstream origin release "
alias gP_r="git push --set-upstream origin release -f "
alias gpall="git push --all origin "
alias gpup="git push upstream "
alias gPup="git push upstream -f "
alias gpup_="git push --set-upstream upstream "
alias gPup_="git push --set-upstream upstream -f "
alias gacp="ga ; gcm ; gp "
alias gacpno="ga ; gc_ano ; gp "
alias gl="git log "
alias gl_="git log --oneline --graph --decorate "
alias gl__="git log --stat --summary "
alias glp="git log -p"
alias gll="gl_ "
alias glll="gl__ "
alias gs="git status "
alias gS="gll ; sep ; gba ; sep ; gs "
alias gS_="gl ; gba ; gs "
alias ok="echo ok"
alias webdev="mkdir assets ; touch index.html ; touch assets/style.css  " 
alias webdev_="git clone https://github.com/achicyr/SCSS-BEM____BlockElementModifier assets/scss ; touch index.html " 
###REMOTE
alias gradd="git remote add origin "
alias grsupp="git remote remove origin "
### GIT CLONE
alias gcl="git clone "
### SUBMODULE
alias gsub="git submodule "
alias gsuba="gsub add "
alias gsubu_chatgpt="git submodule foreach --recursive git fetch "
alias gsubu="gsub update "
alias gsubu_NANI="gsub update --init --ignore-errors "
alias gsubu_="gsub update --init "
alias gsubU="gsubu_ ; gsubu "
alias gsubr="echo '- https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule#answer-1260982
- https://git.wiki.kernel.org/index.php/GitSubmoduleTutorial#Removal

To remove a submodule you need to:

'
echo 'MAKE SUR TO HAVE APPLY AT LEAST ONCE THE FOLLOWING COMMAND IN YOU LOCAL REPO BEFORE ATTEMPTING TO ERASE THE SUBMODULE: gsubU'
echo '1. Delete the relevant section from the .gitmodules file. '
echo '2. Stage the .gitmodules changes:
git add .gitmodules '
echo '3. Delete the relevant section from .git/config. '
echo '4. Remove the submodule files from the working tree and index:
git rm --cached path_to_submodule (no trailing slash). '
echo '5. Remove the submodules .git directory:
rm -rf .git/modules/path_to_submodule '
echo '6. Commit the changes:
git commit -m ___Removed submodule (name)___ XXXXX for cause of mistaken https remote URL '
echo '7. Delete the now untracked submodule files:
rm -rf path_to_submodule ' "
# ------------------------------------------------------------------
# ------------------------------------------------------------------
### GIT MANIPULATIONS
alias g_webdev="git config --global user.name 'webdev-archist' ; git config --global user.email 'webdev.archist@gmail.com' "
alias g_archist="git config --global user.name 'achicyr' ; git config --global user.email 'hi.cyril@gmail.com' "
alias g_yasushi="git config --global user.name '康さん' ; git config --global user.email 'yasushi.jlpt@gmail.com' "
alias g_mentor="git config --global user.name 'archist' ; git config --global user.email 'mentor03.archist@gmail.com' "
alias g_ssh_webdev="cp ~/ssh/webdev/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/webdev/id_rsa.pub ~/.ssh/id_rsa.pub "
alias g_ssh_archist="cp ~/ssh/archist/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/archist/id_rsa.pub ~/.ssh/id_rsa.pub "
alias g_ssh_yasushi="cp ~/ssh/yasushi/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/yasushi/id_rsa.pub ~/.ssh/id_rsa.pub "
alias g_ssh_mentor="cp ~/ssh/mentor/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/mentor/id_rsa.pub ~/.ssh/id_rsa.pub "
alias garchist="g_archist ; g_ssh_archist "
alias gwebdev="g_webdev ; g_ssh_webdev "
alias gyasushi="g_yasushi ; g_ssh_yasushi "
alias gmentor="g_mentor ; g_ssh_mentor "
### GIT BASE CONFIGS
alias gitInitConfig="echo https://qastack.fr/programming/37770467/why-do-i-have-to-git-push-set-upstream-origin-branch ; git config --global --add push.default current ; echo 'git config --global user.name webdev ; git config --global user.email webdev.archist@gmail.com ' "
### GIT CONFIG
alias gname="git config --global user.name "
alias gemail="git config --global user.email "

alias sparse_checkout='function git_sparse_clone() (
echo "okok"
rurl="$1" localdir="$2" && shift 2

mkdir -p "$localdir"
cd "$localdir"

git init
git remote add -f origin "$rurl"

git config core.sparseCheckout true

# Loops over remaining args
for i; do
    echo "$i" >> .git/info/sparse-checkout
done

git pull origin master
)
'
# ------------------------------------------------------------------
# ------------------------------------------------------------------

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/hikari/Téléchargements/google-cloud-sdk/path.bash.inc' ]; then . '/home/hikari/Téléchargements/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/hikari/Téléchargements/google-cloud-sdk/completion.bash.inc' ]; then . '/home/hikari/Téléchargements/google-cloud-sdk/completion.bash.inc'; fi
