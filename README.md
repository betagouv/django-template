# Beta x Django

## Introduction

Ce repo est un kit de démarrage pour vos projets en Django. Il intègre :

- le [Design System de l'Etat](https://www.systeme-de-design.gouv.fr/) (DSFR) avec [django-dsfr](https://pypi.org/project/django-dsfr/)
- des Content Security Policies avec django-csp
- Pre-commit, pour formatter votre code à chaque commit
- une ébauche de CI pour vos tests automatiques
- les paramètres pour se connecter à une base de données PostgreSQL

## Utilisation

### Installation de base

Copier les variables d'environnement :
```
cp .env.example .env
```

### Installation de PostgreSQL

Installer PostgreSQL en fonction de votre OS : https://www.postgresql.org/download/
puis créer une base de données au nom choisi dans DATABASE_NAME de votre fichier .env.

### Installation de pre-commit

[Pre-commit](https://pre-commit.com/) permet de linter et formatter votre code avant chaque commit. Par défaut ici, il exécute :

- [black](https://github.com/psf/black) pour formatter automatiquement vos fichiers .py en conformité avec la PEP 8 (gestion des espaces, longueur des lignes, etc)
- [flake8](https://github.com/pycqa/flake8) pour soulever les "infractions" restantes (import non utilisés, etc)
- [isort](https://github.com/pycqa/isort) pour ordonner vos imports

Pour l'installer :

```bash
pre-commit install
```

Vous pouvez effectuer un premier passage sur tous les fichiers du repo avec :

```bash
pre-commit run --all-files
```

### Exécuter les tests manuellement

```bash
python manage.py test
```
