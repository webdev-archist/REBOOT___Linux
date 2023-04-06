set nocompatible                " pas compatibilité avec vi
" priorité faible pour les fichiers avec les extensions
" suivantes lors du complètement"
set nu
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set history=50                  " 50 lignes dans l'historique
set ruler                       " affiche la position du curseur en bas
set sm                          " affiche la parenthèse correspondante

set formatoptions=tcroqn        " indentation
set autoindent
set cin
set textwidth=0                 " pas de coupure de ligne par défaut
set backspace=2
set ts=4                        " tabulation sur 4 caractères
set sw=4

set nobackup                    " pas de fichier backup
set dir=~/tmp                   " fichier temporaire dans ~/tmp (il faut
" qu'il existe !)
set autowrite

set hlsearch                    " surligne les recherches
set incsearch                   " recherche au fur et à mesure

syntax on                       " coloration syntaxique
set background=dark             " fond noir par défaut
