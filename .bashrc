
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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# ------------------------------------------------------------------
alias smartgit="~/Téléchargements/smartgit/bin/smartgit.sh"
#POUR SE DÉPLACER DANS L'ARCHITECTURE DE FICHIER ----------------------
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
# ------------------------------------------------------------------
#RACCOUCIS DE COMMANDES GÉNÉRALES----------------------------------
alias b="vim ~/.bashrc "
alias bb="vim ~/.bashrc ; sb "
alias sourceb="source ~/.bashrc "
alias sb="sourceb"
alias xdg="xdg-open . "
alias lss="ls -alt "
alias cdd="cd - "
alias psg="ps -aux | grep "
alias k="kill -9  "
alias ai="sudo apt install "
#NODEJS ALIASES
alias c="code . "
alias n="npm run "
alias ns="npm run start "
alias nss="npm run sass "
alias nd="npm run dev "
alias nb="npm run build "
alias nw="npm run watch "
alias nw_="npm run watch_ "
alias nr="npm run "
alias ninit="npm init "
alias ny="ninit -y "
alias ni="npm install "
alias nig="sudo npm install -g "
alias nii="npm ci "
alias nr="npm remove "
alias lh="localserver "
#LES COMMANDE D'ARCHIVAGE "tar": https://www.sebastien-gandossi.fr/blog/comment-creer-et-extraire-une-archive-tar-tar-gz-tar-bz2-ou-tar-xz
alias rmd="rm -rf "
alias t_help="echo 'https://fr.wikihow.com/archiver-un-r%C3%A9pertoire-avec-la-commande-%C2%AB-tar-%C2%BB' "
alias t="tar cvf "
alias t_="tar xvf "
alias z="echo 'CMD EXAMPLE: 
zip nom_de_l-archive_zip *....files_&_dirs_to_zip...*' "
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
alias gflow="gb -m master main ; gb hotfix ; gb develop  "
alias gfloW="gb -m master main ; gb hotfix ; gb develop ; gb release ; gb features "
alias gflowP="gflow ; gmM ; ghoT ; gdeV "
alias gflowP_="gflow ; gmM_ ; ghoT_ ; gdeV_ "
alias gfloWP="gfloW ; gmM ; ghoT ; gdeV ; greL ; gfeA  "
alias gfloWP_="gfloW ; gmM_ ; ghoT_ ; gdeV_ ; greL_ ; gfeA_ "
alias gi="git init ; npm init -y ; "
alias gi_="git init ; npm init -y ; echo '# TITRE REPO...'>README.md ; gac 'IC' "
alias ginit="gi ; gflow "
alias giniT="gi ; gfloW "
alias giniT_="gi_ ; gfloW "
###RESET
alias _grh="git reset --hard HEAD "
alias _grs="git reset --soft HEAD "
alias _grm="git reset --mixed HEAD "
alias grh="git reset --hard HEAD^ "
alias grs="git reset --soft HEAD^ "
alias grm="git reset HEAD^ "
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
alias grau="git remote add upstream "
alias grr="git remote remove origin "
###BRANCHES
alias gb="git branch "
alias gbr="echo 'après cette commande vous devrez utiliser gbr_ pour réinitialiser la branche distante avec le nouveau nom de branhce attribué ici' ; echo 'voici le lien: 
https://fr.w3docs.com/snippets/git/how-to-rename-git-local-and-remote-branches-1.html' ; git branch -m "
alias gbr_="git push origin -u "
alias gba="git branch -a "
alias gbd="git branch -D "
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
alias gacmP="gacm ; gP "
###DIFF
alias gd="git diff "
#alias gac_no="ga ; gc_no "
alias gpu="git pull "
alias gac_a="ga ; gc_a "
alias gac_ano="ga ; gc_ano "
alias gac_anO="ga ; gc_ano ; gP "
alias gac_anoF="ga ; gc_ano ; gp -f "
alias gp="git push "
alias gP="git push -f "
alias gpo="gp origin "
alias gpF="gP "
alias gp_="git push --set-upstream origin "
alias gP_="git push --set-upstream origin "
alias gpall="git push --all origin "
alias gpup="git push upstream "
alias gacp="ga ; gcm ; gp "
alias gacpno="ga ; gc_ano ; gp "
alias gl="git log "
alias gl_="git log --oneline --graph --decorate "
alias gll="gl_ "
alias gs="git status "
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
alias gsubu="gsub update "
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
git commit -m ___Removed submodule (name)___ '
echo '7. Delete the now untracked submodule files:
rm -rf path_to_submodule ' "
# ------------------------------------------------------------------
# ------------------------------------------------------------------
### GIT MANIPULATIONS
alias g_webdev="git config --global user.name 'webdev-archist' ; git config --global user.email 'webdev.archist@gmail.com' "
alias g_archist="git config --global user.name 'achicyr' ; git config --global user.email 'hi.cyril@gmail.com' "
alias g_yasushi="git config --global user.name '康さん' ; git config --global user.email 'yasushi.jlpt@gmail.com' "
alias g_ssh_webdev="cp ~/ssh/webdev/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/webdev/id_rsa.pub ~/.ssh/id_rsa.pub "
alias g_ssh_archist="cp ~/ssh/archist/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/archist/id_rsa.pub ~/.ssh/id_rsa.pub "
alias g_ssh_yasushi="cp ~/ssh/yasushi/id_rsa ~/.ssh/id_rsa ; cp ~/ssh/yasushi/id_rsa.pub ~/.ssh/id_rsa.pub "
alias garchist="g_archist ; g_ssh_archist "
alias gwebdev="g_webdev ; g_ssh_webdev "
alias gyasushi="g_yasushi ; g_ssh_yasushi "
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
