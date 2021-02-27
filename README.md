# BIMstandards

Ce site destiné à promouvoir l'interopérabilité et l'openBIM, et à faciliter leur implémentation dans les logiciels-métier, est développé et mis à jour par [Alexandre Grignon](https://fr.linkedin.com/in/alexandregrignon).

BIMstandards utilise le service [GitHub Pages](https://pages.github.com) ; il est ainsi possible de contribuer à son développement en créant un fork du dépôt GitHub.

## Comment contribuer ?

Pour contribuer au site BIMstandards, il faut d'abord créer un compte GitHub ([gratuit](https://github.com/join)).

### Faire une remarque

Si vous avez une suggestion pour corriger, améliorer, modifier une page du site, vous pouvez d'abord [formuler une remarque](https://github.com/bimstandards/bimstandards/issues/new) dans l'onglet "Issues". N'oubliez pas de vérifier que la suggestion n'existe pas déjà.

Chaque remarque sera visible publiquement, et pourra ainsi faire l'objet d'une discussion entre les contributeurs du site.

### Proposer une modification

Pour les plus aguerris à la technologie utilisée par le site ([GitHub Pages](https://pages.github.com)), il est également possible de proposer des améliorations en modifiant directement la source du site. Chaque proposition sera soumise à validation avant intégration.

1. Créer une [nouvelle branche](https://github.com/bimstandards/bimstandards#fork-destination-box) du dépôt.
2. [Cloner](https://help.github.com/desktop/guides/contributing/cloning-a-repository-from-github-desktop/) cette branche en local sur votre ordinateur à l'aide du logiciel [GitHub Desktop](https://desktop.github.com).
3. Effectuer les modifications souhaitées à l'aide d'un [éditeur de texte](https://atom.io) compatible [Markdown](https://guides.github.com/features/mastering-markdown/).
4. Lorsque les modifications sont terminées, [créer un commit](https://help.github.com/desktop/guides/contributing/committing-and-reviewing-changes-to-your-project/) avec le logiciel GitHub Desktop puis [synchroniser la branche](https://help.github.com/desktop/guides/contributing/syncing-your-branch/).
5. Toujours avec GitHub Desktop, effectuer une [demande de prise en compte](https://help.github.com/desktop/guides/contributing/sending-a-pull-request/) des modifications ([Pull Request](https://github.com/bimstandards/bimstandards/pulls)).

## Développeur

### Exécuter bimstandards en local sur MacOS

1. Cloner le dépôt dans le dossier "Sites" du Mac avec l'application GitHub Desktop.
2. Dans le Terminal, naviguer vers le dossier "bimstandards" avec `cd Sites/bimstandards`
3. Lancer Jekyll avec la commande :
  - `bundle exec jekyll serve --incremental`
  - `bundle exec jekyll build --config _config.yml,_config_beta.yml`
4. Le site est accessible à l'adresse http://localhost:4000
5. Pour arrêter Jekyll, appuyer sur `ctrl+c`

### Exécuter bimstandards en local sur Windows

1. Cloner le dépôt dans le dossier "Documents/GitHub" avec l'application GitHub Desktop.
2. Installer WSL, puis Ubuntu [https://korben.info/installer-wsl2-windows-linux.html](https://korben.info/installer-wsl2-windows-linux.html)
3. Installer Jekyll [https://jekyllrb.com/docs/installation/windows/](https://jekyllrb.com/docs/installation/windows/)
4. Dans PowerShell, naviguer vers le dossier "bimstandards" avec `cd Documents/GitHub/bimstandards`
5. Lancer Jekyll avec la commande :
  - `sudo bundle exec jekyll serve --incremental`
  - `sudo bundle exec jekyll build --config _config.yml,_config_beta.yml`
6. Le site est accessible à l'adresse http://localhost:4000
7. Pour arrêter Jekyll, appuyer sur `ctrl+c`

### Mise à jour environnement github-pages

`bundle update github-pages`

## Licence

L'ensemble du site est placé sous licence Creative Commons [Attribution - Partage dans les Mêmes Conditions 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/deed.fr) (CC BY-SA 4.0).
