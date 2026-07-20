# Portfolio : Josué Mbah Moffo

Ce dépôt contient le portfolio statique de Josué Mbah Moffo, construit avec Astro et conçu pour mettre en valeur son profil de développeur backend et SecOps.

## Présentation du projet

Le site est une vitrine personnelle destinée à présenter :

- le profil et les compétences techniques
- les expériences et parcours académiques
- les projets réalisés
- un contenu multilingue français / anglais
- des informations de contact

Le projet est structuré pour offrir une expérience rapide, responsive et optimisée pour le SEO.

## Fonctionnalités clés

- génération de site statique avec Astro
- gestion multilingue FR / EN
- layout global partagé via `src/layouts/BaseLayout.astro`
- contenu dynamique issu de JSON (`src/content/profile.json`, `src/content/profile.en.json`, `src/content/projects.json`, `src/content/projects.en.json`)
- métadonnées SEO dynamiques comprenant Open Graph et Twitter Card
- intégration de favicons et PWA via `public/site.webmanifest`
- affichage responsive avec disposition adaptative pour mobile
- optimisation de performance et analytics Vercel

## Structure du projet

```text
src/
├── content/
│   ├── profile.json
│   ├── profile.en.json
│   ├── projects.json
│   └── projects.en.json
├── layouts/
│   └── BaseLayout.astro
└── pages/
    ├── index.astro
    └── en/index.astro
```

## Mise en œuvre actuelle

- `BaseLayout.astro` gère :
  - les balises HTML communes
  - les balises meta SEO
  - les favicons
  - le support multilingue

- `src/pages/index.astro` et `src/pages/en/index.astro` contiennent :
  - la section hero
  - la section à propos
  - la carte profil dynamique
  - les projets et la navigation

- les données affichées sont chargées depuis les fichiers JSON et utilisées de manière dynamique dans le layout et les pages.

## Avancées récentes

Le projet a été mis à jour pour :

- afficher dynamiquement le contenu des profils FR/EN
- tolérer les URL d’image publiques pour le partage social
- utiliser `/josue.jpeg` comme image de prévisualisation OG
- ajouter une section à propos avec un rendu image responsive
- maintenir les métadonnées Open Graph dynamiques pour un meilleur partage WhatsApp et social

## Commandes

```bash
npm install
npm run dev
npm run build
npm run preview
```

## Dépendances principales

- `astro`
- `@astrojs/sitemap`
- `tailwindcss`
- `@tailwindcss/vite`
- `@vercel/analytics`
- `@vercel/speed-insights`

## Remarques

- le projet n’utilise pas d’icônes dans le README ni dans la structure de documentation
- les images sont servies depuis le dossier `public`
- le texte du portfolio est maintenu via JSON pour simplifier les mises à jour multilingues
