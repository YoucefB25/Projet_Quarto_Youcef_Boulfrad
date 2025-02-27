Ce projet a pour vocation d'expliquer et de comparer diverses méthodes de classification supervisée en Machine Learning. Il pourra être étoffé par la suite. 

# Déploiement distant (via pipeline de déploiement distant) :

Les pages HTML sont déployées à distance via GitHub sous le lien https://youcefb25.github.io/Projet_Quarto_Youcef_Boulfrad/notebooks/

Ce déploiement distant se fait grâce à un pipeline stocké localement dans .github/workflows/build-deploy.yml, et se déclenche après chaque nouveau push sur GitHub. 

# Déploiement local (via pipeline de déploiement local):

Pour déployer localement, d'abord cloner le dépôt en tapant dans un terminal:

git clone https://github.com/YoucefB25/Projet_Quarto_Youcef_Boulfrad/tree/main

Puis dans le terminal, se positionner à la racine du projet, puis exécuter la commande ./run_pipeline.sh

Il s'agit d'un pipeline de déploiement local, qui génère des pages HTML et des fichiers PDF.

Les pages HTML et les fichiers PDF vont s'enregistrer automatiquement dans les dossiers exports/html et exports/pdf respectivement. 

A la fin de l'exécution, les pages HTML sont déployées automatiquement sur le port 9005 de la machine locale, et sont accessibles via un navigateur sur localhost:9005 