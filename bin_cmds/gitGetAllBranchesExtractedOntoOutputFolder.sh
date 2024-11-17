#!/bin/bash

# Obtenir la liste des branches locales
echo "THE REPOSITORY MUST HAVE BE NAMED \"input_repo\" !!!"
echo "YOU HAVE TO CALL THIS SCRIPT IN THE PARENT FOLDER OF YOUR REPOSITORY"
mkdir -p output
cd input_repo
branches=$(git branch -a)
# echo $(pwd)

# Parcourir chaque branche
for branch in $branches; do

    # Obtenir le nom de la branche distante correspondante
    remote_branch=$(echo $branch | sed 's/remotes\/origin\/\(.*\)/\1/')
    # echo $branch
    # echo $remote_branch

    mkdir -p "../output/${remote_branch}"
    # Fusionner la branche locale avec la branche distante
    git checkout $remote_branch
    cp -r * "../output/${remote_branch}"

done

