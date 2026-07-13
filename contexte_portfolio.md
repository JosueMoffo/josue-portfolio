# Contexte du Code Source - Portfolio
Généré le : lun. 13 juil. 2026 15:06:32 WAT
---


## FICHIER: ./package.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
{
  "name": "josue-portfolio",
  "type": "module",
  "version": "0.0.1",
  "scripts": {
    "dev": "astro dev",
    "build": "astro build",
    "preview": "astro preview",
    "astro": "astro"
  },
  "dependencies": {
    "@tailwindcss/vite": "^4.1.18",
    "@vercel/analytics": "^1.6.1",
    "@vercel/speed-insights": "^1.3.1",
    "astro": "^5.17.1",
    "tailwindcss": "^4.1.18"
  }
}

```


## FICHIER: ./astro.config.mjs

```mjs vert{} sed s/js/javascript/;s/ts/typescript/
// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  vite: {
    plugins: [tailwindcss()]
  }
});
```


## FICHIER: ./public/assets/README.md

```md vert{} sed s/js/javascript/;s/ts/typescript/
# Dossier CV

Placez votre fichier CV ici avec le nom exact suivant :

```
CV-Mbah_Josue.pdf
```

Le lien dans le portfolio pointe vers `/assets/CV-Mbah_Josue`
et utilise l'attribut `download` pour déclencher le téléchargement direct.

## Chemin complet attendu

```
public/assets/CV-Mbah_Josue
```

```


## FICHIER: ./public/site.webmanifest

```webmanifest vert{} sed s/js/javascript/;s/ts/typescript/
{
  "name": "",
  "short_name": "",
  "icons": [
    {
      "src": "/android-chrome-192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "/android-chrome-512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "theme_color": "#ffffff",
  "background_color": "#ffffff",
  "display": "standalone"
}

```


## FICHIER: ./tsconfig.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
{
  "extends": "astro/tsconfigs/strict",
  "include": [".astro/types.d.ts", "**/*"],
  "exclude": ["dist"]
}

```


## FICHIER: ./extract_context.sh

```sh vert{} sed s/js/javascript/;s/ts/typescript/
#!/bin/bash

# Nom du fichier de sortie
OUTPUT_FILE="contexte_portfolio.md"

# Initialisation du fichier avec une structure Markdown
echo "# Contexte du Code Source - Portfolio" > "$OUTPUT_FILE"
echo "Généré le : $(date)" >> "$OUTPUT_FILE"
echo "---" >> "$OUTPUT_FILE"

echo "⏳ Extraction du code en cours..."

# Parcourir les fichiers textuels du projet en ignorant les dossiers lourds ou inutiles
find . -type f \
  ! -path "*/node_modules/*" \
  ! -path "*/.git/*" \
  ! -path "*/.next/*" \
  ! -path "*/.astro/*" \
  ! -path "*/dist/*" \
  ! -path "*/build/*" \
  ! -path "*.png" \
  ! -path "*.jpg" \
  ! -path "*.jpeg" \
  ! -path "*.svg" \
  ! -path "*.ico" \
  ! -path "*$OUTPUT_FILE*" \
  | while read -r file; do

    # Vérifier si le fichier est un fichier texte (évite les binaires résiduels)
    if file "$file" | grep -qE 'text|empty|JSON'; then
        echo "📄 Ajout de : $file"
        
        # Ajouter le chemin du fichier comme titre dans le Markdown
        echo -e "\n\n## FICHIER: $file\n" >> "$OUTPUT_FILE"
        echo '```'$(echo "${file##*.}" \vert{} sed 's/js/javascript/;s/ts/typescript/') >> "$OUTPUT_FILE"
        
        # Insérer le contenu du fichier
        cat "$file" >> "$OUTPUT_FILE"
        
        echo -e '\n```' >> "$OUTPUT_FILE"
    fi
done

echo "✅ Extraction terminée ! Le fichier '$OUTPUT_FILE' est prêt à être partagé avec l'IA."

```


## FICHIER: ./src/content/profile.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
{
  "name": "JOSUÉ",
  "lastName": "MBAH MOFFO",
  "fullName": "MBAH MOFFO JOSUÉ",
  "title": "Ingénieur de Conception Informatique",
  "specialty": "Développeur Backend Orienté Sécurité",
  "description": "Focus sur le développement d'applications robustes et l'administration sécurisée des infrastructures réseaux.",
  "email": "josuemoffo@gmail.com",
  "location": "Yaoundé, Cameroun",
  "lastUpdate": "15 Avril 2026",
  "web3FormsKey": "40346999-4889-42d1-92a1-9eb18d8efc53",
  "cvPath": "/assets/CV-Mbah_Josue.pdf",
  "socials": [
    {
      "id": "github",
      "label": "GitHub",
      "url": "https://github.com/JosueMoffo",
      "trackEvent": "Social_Link",
      "trackPlatform": "GitHub"
    },
    {
      "id": "linkedin",
      "label": "LinkedIn",
      "url": "https://www.linkedin.com/in/josue-mbah-moffo/",
      "trackEvent": "Social_Link",
      "trackPlatform": "Linkedin"
    },
    {
      "id": "instagram",
      "label": "Instagram",
      "url": "https://www.instagram.com/elmoffojos/",
      "trackEvent": "Social_Link",
      "trackPlatform": "Instagram"
    }
  ],
  "skills": [
    {
      "id": "dev",
      "category": "Développement",
      "accentColor": "var(--accent)",
      "items": ["JavaScript", "TypeScript", "C", "Python", "Java"],
      "subSection": {
        "label": "Frameworks",
        "items": ["Astro", "Django", "FastAPI", "SpringBoot", "Tailwind CSS"]
      }
    },
    {
      "id": "infra",
      "category": "Infrastructure & Réseaux",
      "accentColor": "var(--cyber-purple, #a78bfa)",
      "items": ["Linux", "SNMP", "Nagios"],
      "subSection": {
        "label": "Outils",
        "items": ["Cisco Packet Tracer", "Wireshark", "VirtualBox"]
      }
    },
    {
      "id": "devops",
      "category": "DevOps & Cloud",
      "accentColor": "#10b981",
      "items": ["Docker", "Git", "Bash", "Firebase"],
      "subSection": {
        "label": "Plateformes",
        "items": ["Supabase", "Render"]
      }
    },
    {
      "id": "db",
      "category": "Base de Données",
      "accentColor": "var(--accent)",
      "items": ["MySQL", "PostgreSQL", "Firebase"],
      "subSection": null
    },
    {
      "id": "security",
      "category": "Sécurité",
      "accentColor": "#ef4444",
      "items": ["Analyse de vulnérabilités", "Metasploitable", "Chiffrement AES et RSA", "OWASP Top 10"],
      "subSection": null
    }
  ],
  "faq": [
    {
      "id": "faq-disponibilite",
      "question": "Quel est votre rythme de disponibilité ?",
      "answer": "Actuellement en formation à l'ENSPY, je suis disponible pour des stages ou missions freelance en parallèle de mes études. Je peux m'adapter aux besoins du projet tout en maintenant un équilibre avec mon parcours académique."
    },
    {
      "id": "faq-double-profil",
      "question": "Pourquoi ce double profil Dev et Réseau ?",
      "answer": "Pour comprendre l'application de la couche logicielle jusqu'à la transmission physique des données, étape cruciale pour la cybersécurité. Cette approche me permet d'appréhender les systèmes informatiques dans leur globalité, de l'infrastructure réseau aux applications utilisateur. Ce qui est essentiel pour identifier et corriger les vulnérabilités."
    },
    {
      "id": "faq-objectifs",
      "question": "Quels sont vos prochains objectifs techniques ?",
      "answer": "L'approfondissement de la sécurité offensive à travers la pratique du penetration testing et l'obtention de certifications professionnelles, notamment les certifications Cisco (CCNA) et CompTIA Security+. Je continue également à développer mes compétences en analyse de vulnérabilités et en administration sécurisée des infrastructures."
    },
    {
      "id": "faq-freelance",
      "question": "Acceptez-vous des missions freelance ou à distance ?",
      "answer": "Oui, tout à fait. Je suis ouvert aux collaborations à distance (remote) et aux missions ponctuelles sur des projets backend, API REST, architecture microservices ou sécurisation d'applications. N'hésitez pas à me contacter via le formulaire ci-dessous pour discuter de vos besoins."
    }
  ]
}

```


## FICHIER: ./src/content/projects.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
[
  {
    "id": "shuba",
    "title": "Shuba: Marketplace Multi-tenant",
    "category": "Personnel",
    "status": "completed",
    "description": "Plateforme e-commerce SaaS complète multi-tenant avec isolation des bases de données et personnalisation dynamique des boutiques.",
    "previewGradient": "linear-gradient(135deg, #0a0e1a 0%, #10b981 100%)",
    "image": "",
    "tags": ["Django", "Python", "PostgreSQL", "Docker"],
    "technicalDetails": {
      "architecture": "Architecture monolithique modulaire avec routeur de bases de données pour le multi-tenancy basé sur les sous-domaines.",
      "tools": ["Django Tenants", "Celery", "Redis", "Stripe API", "Nginx"],
      "challenges": "Gestion de la migration dynamique des schémas de base de données pour chaque nouveau locataire en évitant les temps d'arrêt."
    },
    "links": [
      {
        "label": "Explorer l'application",
        "url": "https://shuba.onrender.com",
        "trackEvent": "View_Project",
        "trackName": "Marketplace",
        "colorStyle": "#10b981"
      },
      {
        "label": "Code Source",
        "url": "https://github.com/JosueMoffo/saas-marketplace",
        "trackEvent": "View_Project",
        "trackName": "Marketplace_GH",
        "colorStyle": "#10b981"
      }
    ]
  },
  {
    "id": "api-rsv",
    "title": "API-Rsv-TravYotei Microservices",
    "category": "Académique",
    "status": "completed",
    "description": "Moteur distribué de traitement des réservations à haut débit, s'appuyant sur des flux d'événements pour garantir la cohérence finale.",
    "previewGradient": "linear-gradient(135deg, #0a0e1a 0%, #00d9ff 100%)",
    "image": "",
    "tags": ["Spring Boot", "Java", "Apache Kafka", "PostgreSQL"],
    "technicalDetails": {
      "architecture": "Microservices événementiels (Event-Driven Architecture) avec découplage complet via des files d'attente de messages.",
      "tools": ["Kafka Streams", "Spring Cloud Gateway", "Eureka Discovery", "Docker Compose"],
      "challenges": "Garantir le traitement unique des messages (Idempotency) dans Kafka en situation de pannes de nœuds réseau."
    },
    "links": [
      {
        "label": "Dépôt GitHub",
        "url": "https://github.com/JosueMoffo/API-Rsv-TravYotei",
        "trackEvent": "View_Project",
        "trackName": "API-Rsv-TravYotei",
        "colorStyle": "var(--accent)"
      }
    ]
  },
  {
    "id": "api-recommendation",
    "title": "Système de Recommandation IA",
    "category": "Académique",
    "status": "completed",
    "description": "API de suggestion d'ouvrages littéraires basée sur l'analyse comportementale et le filtrage collaboratif.",
    "previewGradient": "linear-gradient(135deg, #0a0e1a 0%, #a78bfa 100%)",
    "image": "",
    "tags": ["Flask", "Python", "Machine Learning", "Scikit-Learn"],
    "technicalDetails": {
      "architecture": "Architecture micro-service découplée exposant des modèles de prédiction via une API REST sécurisée.",
      "tools": ["Pandas", "Numpy", "Railway Cloud", "REST API"],
      "challenges": "Optimisation du temps de calcul de la matrice de similarité cosinus pour supporter des requêtes sous la barre des 100ms."
    },
    "links": [
      {
        "label": "Consulter la Démo",
        "url": "https://recommendation.up.railway.app",
        "trackEvent": "View_Project",
        "trackName": "API-recommendation",
        "colorStyle": "#a78bfa"
      }
    ]
  },
  {
    "id": "shieldguard",
    "title": "ShieldGuard: Analyseur Réseau",
    "category": "Personnel",
    "status": "in-progress",
    "description": "Outil d'audit automatique des configurations de commutateurs Cisco et détection automatique des failles courantes.",
    "previewGradient": "linear-gradient(135deg, #0a0e1a 0%, #ef4444 100%)",
    "image": "",
    "tags": ["FastAPI", "Python", "Scapy", "Cisco SSH"],
    "technicalDetails": {
      "architecture": "Agent de scrutation asynchrone collectant les flux SSH et analysant la topologie réseau en temps réel.",
      "tools": ["Paramiko", "Netmiko", "Pytest", "Vue.js"],
      "challenges": "Extraction et parsing normalisé de configurations CLI Cisco hétérogènes sans surcharge CPU sur le matériel ciblé."
    },
    "links": [
      {
        "label": "Suivre le projet (GitHub)",
        "url": "https://github.com/JosueMoffo",
        "trackEvent": "View_Project",
        "trackName": "ShieldGuard",
        "colorStyle": "#ef4444"
      }
    ]
  },
  {
    "id": "travyotei-v2",
    "title": "TravYotei V2 - Mobilité Intégrée",
    "category": "Académique",
    "status": "in-progress",
    "description": "Portail web unifié de réservation de trajets interurbains avec synchronisation en temps réel de l'état des bus.",
    "previewGradient": "linear-gradient(135deg, #0a0e1a 0%, #f59e0b 100%)",
    "image": "",
    "tags": ["Next.js", "TypeScript", "TailwindCSS", "WebSockets"],
    "technicalDetails": {
      "architecture": "Rendu hybride SSR/SSG pour des performances de référencement optimales combiné avec des sockets persistantes.",
      "tools": ["Socket.io", "Prisma ORB", "React Query", "Vercel"],
      "challenges": "Gestion de la concurrence lors du verrouillage simultané des sièges de bus par plusieurs clients."
    },
    "links": [
      {
        "label": "Accéder à l'application",
        "url": "https://frontend-travyotei.vercel.app/",
        "trackEvent": "View_Project",
        "trackName": "TravYotei_Frontend",
        "colorStyle": "var(--accent)"
      }
    ]
  }
]

```


## FICHIER: ./src/styles/global.css

```css vert{} sed s/js/javascript/;s/ts/typescript/
@import "tailwindcss";

@theme {
  --color-night-950: #0a0e1a;
  --color-night-900: #0f1419;
  --color-night-800: #1a1f2e;
  --color-cyber-blue: #00d9ff;
  --color-cyber-purple: #a78bfa;
  --color-cyber-green: #10b981;
  --font-sans: "Inter", sans-serif;
  --font-mono: "Fira Code", monospace;
}

:root,
[data-theme="dark"] {
  --bg-primary:    #0a0e1a;
  --bg-secondary:  #0f1419;
  --bg-card:       #0f1419;
  --bg-card-inner: #0a0e1a;
  --bg-nav:        rgba(10,14,26,0.88);
  --bg-input:      #0f1419;
  --border-color:  #1a1f2e;
  --text-primary:  #f1f5f9;
  --text-secondary:#94a3b8;
  --text-muted:    #64748b;
  --tag-bg:        #1a1f2e;
  --tag-text:      #cbd5e1;
  --accent:        #00d9ff;
  --accent-rgb:    0,217,255;
  --scrollbar-track: #0a0e1a;
  --scrollbar-thumb: #1a1f2e;
  --grid-color:    #00d9ff;
  --btn-primary-bg:  #00d9ff;
  --btn-primary-text:#0a0e1a;
  --btn-primary-hover:#ffffff;
  --faq-answer-bg: #0a0e1a;
  --input-text:    #f1f5f9;
  --input-placeholder: #475569;
  --shadow-card:   0 4px 24px rgba(0,0,0,0.5);
  --timeline-dot-muted: #475569;
}

[data-theme="light"] {
  --bg-primary:    #f5f7fa;
  --bg-secondary:  #ffffff;
  --bg-card:       #ffffff;
  --bg-card-inner: #f0f4f8;
  --bg-nav:        rgba(245,247,250,0.94);
  --bg-input:      #f0f4f8;
  --border-color:  #e2e8f0;
  --text-primary:  #0f172a;
  --text-secondary:#475569;
  --text-muted:    #94a3b8;
  --tag-bg:        #e8eef5;
  --tag-text:      #334155;
  --accent:        #0077cc;
  --accent-rgb:    0,119,204;
  --scrollbar-track: #f0f4f8;
  --scrollbar-thumb: #cbd5e1;
  --grid-color:    #0077cc;
  --btn-primary-bg:  #0077cc;
  --btn-primary-text:#ffffff;
  --btn-primary-hover:#005fa3;
  --faq-answer-bg: #f8fafc;
  --input-text:    #0f172a;
  --input-placeholder: #94a3b8;
  --shadow-card:   0 4px 24px rgba(0,0,0,0.07);
  --timeline-dot-muted: #94a3b8;
}

* { box-sizing: border-box; }

body {
  background: var(--bg-primary);
  color: var(--text-primary);
  font-family: "Inter", sans-serif;
  margin: 0;
  transition: background 0.35s ease, color 0.35s ease;
}

::-webkit-scrollbar { width: 6px; }
::-webkit-scrollbar-track { background: var(--scrollbar-track); }
::-webkit-scrollbar-thumb { background: var(--scrollbar-thumb); border-radius: 4px; }
::-webkit-scrollbar-thumb:hover { background: var(--accent); }

@keyframes fadeInUp {
  from { opacity: 0; transform: translateY(24px); }
  to   { opacity: 1; transform: translateY(0); }
}
@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }
@keyframes ping { 75%,100% { transform: scale(2); opacity: 0; } }

.animate-fade-in { animation: fadeIn 0.6s ease-out forwards; }
.animate-fade-in-up { animation: fadeInUp 0.6s ease-out forwards; }
.animate-ping { animation: ping 1.5s cubic-bezier(0,0,0.2,1) infinite; }
.delay-100 { animation-delay: 0.1s; opacity: 0; }
.delay-200 { animation-delay: 0.2s; opacity: 0; }
.delay-300 { animation-delay: 0.3s; opacity: 0; }
.delay-400 { animation-delay: 0.4s; opacity: 0; }
.delay-500 { animation-delay: 0.5s; opacity: 0; }

.section-dark { background: var(--bg-primary); }
.section-alt  { background: var(--bg-secondary); }

.section-title {
  color: var(--text-primary);
  font-size: clamp(2rem, 5vw, 3rem);
  font-weight: 700;
  margin-bottom: 1rem;
}
.section-bar {
  width: 5.5rem; height: 4px;
  background: var(--accent);
  margin: 0 auto; border-radius: 2px;
  transition: background 0.35s;
}

.grid-bg {
  position: absolute; inset: 0;
  opacity: 0.07; pointer-events: none;
  background-image:
    linear-gradient(var(--grid-color) 1px, transparent 1px),
    linear-gradient(90deg, var(--grid-color) 1px, transparent 1px);
  background-size: 50px 50px;
  transition: opacity 0.35s;
}
[data-theme="light"] .grid-bg { opacity: 0.03; }

.card {
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 4px;
  transition: border-color 0.3s, box-shadow 0.3s, background 0.35s;
}
.card:hover { border-color: var(--accent); box-shadow: var(--shadow-card); }
.card-inner {
  background: var(--bg-card-inner);
  border: 1px solid var(--border-color);
  border-radius: 4px;
  transition: border-color 0.3s, background 0.35s;
}
.card-inner:hover { border-color: var(--accent); }

.tag {
  display: inline-block; padding: 3px 10px;
  background: var(--tag-bg); color: var(--tag-text);
  border-radius: 4px; font-family: "Fira Code", monospace;
  font-size: 0.73rem; transition: background 0.35s, color 0.35s;
}

.timeline-line {
  border-left: 2px solid var(--border-color);
  transition: border-color 0.3s;
}
.timeline-line:hover { border-color: var(--accent); }

.btn-primary {
  background: var(--btn-primary-bg); color: var(--btn-primary-text);
  font-family: "Fira Code", monospace; font-weight: 700; font-size: 0.82rem;
  padding: 12px 28px; border-radius: 4px; border: none; cursor: pointer;
  text-decoration: none; display: inline-block;
  transition: background 0.25s, color 0.25s, box-shadow 0.25s;
  text-align: center; letter-spacing: 0.04em;
}
.btn-primary:hover {
  background: var(--btn-primary-hover);
  box-shadow: 0 0 20px rgba(var(--accent-rgb), 0.45);
  color: var(--bg-primary);
}
[data-theme="light"] .btn-primary:hover { color: #ffffff; }
.btn-outline {
  border: 1.5px solid rgba(var(--accent-rgb), 0.55); color: var(--accent);
  font-family: "Fira Code", monospace; font-weight: 700; font-size: 0.82rem;
  padding: 11px 28px; border-radius: 4px; background: transparent; cursor: pointer;
  text-decoration: none; display: inline-block;
  transition: background 0.25s, border-color 0.25s; text-align: center;
}
.btn-outline:hover {
  background: rgba(var(--accent-rgb), 0.08);
  border-color: var(--accent);
}

.project-link {
  color: var(--accent); text-decoration: none; font-weight: 500;
  display: inline-flex; align-items: center; gap: 6px; transition: color 0.2s;
}
.project-link:hover { color: var(--text-primary); }

/* ── FAQ ──────────────────────────────────────────────────────── */
.faq-item {
  background: var(--bg-card);
  border: 1px solid var(--border-color);
  border-radius: 6px; overflow: hidden;
  transition: border-color 0.3s, box-shadow 0.3s, background 0.35s;
}
.faq-item:hover { border-color: var(--accent); }
.faq-item.open { border-color: var(--accent); box-shadow: 0 0 0 2px rgba(var(--accent-rgb),0.1); }
.faq-trigger {
  width: 100%; display: flex; align-items: center;
  justify-content: space-between; gap: 16px;
  padding: 20px 22px; background: transparent;
  border: none; cursor: pointer; text-align: left;
  color: var(--text-primary);
}
.faq-trigger:focus-visible { outline: 2px solid var(--accent); outline-offset: -2px; }
.faq-question {
  font-size: 1rem; font-weight: 700; color: var(--text-primary); flex: 1;
  transition: color 0.2s;
}
.faq-item.open .faq-question { color: var(--accent); }
.faq-chevron {
  flex-shrink: 0; width: 18px; height: 18px;
  color: var(--accent); transition: transform 0.3s ease;
}
.faq-item.open .faq-chevron { transform: rotate(180deg); }
.faq-answer {
  max-height: 0; overflow: hidden;
  transition: max-height 0.4s cubic-bezier(0.4,0,0.2,1);
  background: var(--faq-answer-bg);
  transition: max-height 0.4s cubic-bezier(0.4,0,0.2,1), background 0.35s;
}
.faq-answer-inner {
  padding: 0 22px 20px;
  color: var(--text-secondary);
  line-height: 1.78; font-size: 0.93rem;
}
.faq-item.open .faq-answer { max-height: 500px; }

/* ── CONTACT FORM ─────────────────────────────────────────────── */
.form-group { display: flex; flex-direction: column; gap: 6px; }
.form-label {
  font-size: 0.7rem; font-family: "Fira Code", monospace;
  letter-spacing: 0.1em; text-transform: uppercase;
  color: var(--text-secondary); font-weight: 500;
}
.form-input, .form-textarea {
  background: var(--bg-input); border: 1px solid var(--border-color);
  border-radius: 4px; padding: 11px 14px;
  color: var(--input-text); font-family: "Inter", sans-serif;
  font-size: 0.9rem; width: 100%; outline: none;
  transition: border-color 0.2s, box-shadow 0.2s, background 0.35s, color 0.35s;
}
.form-input::placeholder, .form-textarea::placeholder { color: var(--input-placeholder); }
.form-input:focus, .form-textarea:focus {
  border-color: var(--accent);
  box-shadow: 0 0 0 3px rgba(var(--accent-rgb), 0.14);
}
.form-textarea { resize: vertical; min-height: 130px; }
.form-status {
  display: none; padding: 12px 16px; border-radius: 4px;
  font-size: 0.85rem; font-weight: 500; margin-top: 4px;
}
.form-status.loading {
  display: block; background: rgba(var(--accent-rgb), 0.06);
  color: var(--text-secondary); border: 1px solid rgba(var(--accent-rgb), 0.2);
  font-family: "Fira Code", monospace;
}
.form-status.success {
  display: block; background: rgba(16,185,129,0.1);
  color: #10b981; border: 1px solid rgba(16,185,129,0.28);
}
.form-status.error {
  display: block; background: rgba(239,68,68,0.08);
  color: #ef4444; border: 1px solid rgba(239,68,68,0.22);
}

/* ── SOCIAL / CONTACT CARDS ───────────────────────────────────── */
.social-btn {
  display: flex; align-items: center; justify-content: center; gap: 10px;
  padding: 12px 24px; background: var(--bg-card-inner);
  border: 1px solid var(--border-color); border-radius: 4px;
  color: var(--text-secondary); font-weight: 500;
  text-decoration: none;
  transition: border-color 0.2s, color 0.2s, background 0.2s;
}
.social-btn:hover {
  border-color: var(--accent); color: var(--text-primary);
  background: rgba(var(--accent-rgb), 0.05);
}

/* ── NAV ──────────────────────────────────────────────────────── */
.nav-logo {
  font-family: "Fira Code", monospace; font-size: 1.2rem;
  font-weight: 700; color: var(--accent);
  letter-spacing: -0.05em; text-decoration: none;
  transition: color 0.35s;
}
.nav-link {
  color: var(--text-secondary); font-size: 0.68rem;
  text-transform: uppercase; letter-spacing: 0.12em;
  font-weight: 500; transition: color 0.2s; text-decoration: none;
}
.nav-link:hover { color: var(--accent); }

/* ── THEME TOGGLE ─────────────────────────────────────────────── */
#theme-toggle {
  display: inline-flex; align-items: center; gap: 7px;
  padding: 6px 14px; border-radius: 999px;
  border: 1.5px solid var(--accent);
  background: transparent; color: var(--accent);
  font-size: 0.7rem; font-family: "Fira Code", monospace;
  font-weight: 600; letter-spacing: 0.07em;
  cursor: pointer; white-space: nowrap;
  transition: background 0.25s, color 0.25s, box-shadow 0.25s, border-color 0.35s;
}
#theme-toggle:hover {
  background: var(--accent); color: var(--btn-primary-text);
  box-shadow: 0 0 16px rgba(var(--accent-rgb), 0.4);
}
.toggle-icon { font-size: 13px; line-height: 1; }
@media (max-width: 480px) { .toggle-label { display: none; } }

/* ── MOBILE MENU ─────────────────────────────────────────────── */
#mobile-menu {
  background: var(--bg-primary);
  transition: opacity 0.35s cubic-bezier(0.4,0,0.2,1), background 0.35s;
}
.mobile-nav-link {
  display: flex; align-items: center; gap: 16px;
  padding: 12px 32px; width: 100%; max-width: 300px;
  border-radius: 4px; text-decoration: none; color: var(--text-primary);
  transition: background 0.2s;
}
.mobile-nav-link:hover { background: var(--tag-bg); }
.mob-num {
  font-size: 0.65rem; font-family: "Fira Code", monospace;
  color: rgba(var(--accent-rgb), 0.4); transition: color 0.2s;
}
.mobile-nav-link:hover .mob-num { color: var(--accent); }
.mob-label {
  font-size: 1.4rem; font-weight: 700;
  text-transform: uppercase; letter-spacing: 0.08em; transition: color 0.2s;
}
.mobile-nav-link:hover .mob-label { color: var(--accent); }
.mob-arrow { margin-left: auto; opacity: 0; transition: opacity 0.2s; color: var(--accent); }
.mobile-nav-link:hover .mob-arrow { opacity: 1; }

/* ── FOOTER ──────────────────────────────────────────────────── */
footer {
  background: var(--bg-secondary);
  border-top: 1px solid var(--border-color);
  transition: background 0.35s, border-color 0.35s;
}

/* ── HERO ELEMENTS ───────────────────────────────────────────── */
.hero-status {
  display: inline-flex; align-items: center; gap: 10px;
  background: var(--bg-card); border: 1px solid var(--border-color);
  border-radius: 999px; padding: 5px 16px;
  backdrop-filter: blur(8px);
  transition: background 0.35s, border-color 0.35s;
}
.ping-wrapper { position: relative; display: flex; width: 8px; height: 8px; flex-shrink: 0; }
.ping-ring {
  position: absolute; inset: 0; border-radius: 50%;
  background: var(--accent); opacity: 0.75;
  animation: ping 1.5s cubic-bezier(0,0,0.2,1) infinite;
}
.ping-dot { width: 8px; height: 8px; border-radius: 50%; background: var(--accent); position: relative; }

@media (max-width: 640px) {
  .cta-group { flex-direction: column !important; }
  .cta-group a { width: 100%; text-align: center; }
}

/* ── PROJECT BADGES (Data-Driven) ────────────────────────────── */
.project-badge {
  padding: 3px 10px;
  font-family: "Fira Code", monospace;
  font-size: 0.68rem;
  border-radius: 4px;
  white-space: nowrap;
  flex-shrink: 0;
  font-weight: 500;
}
.badge-accent {
  background: rgba(var(--accent-rgb), 0.1);
  color: var(--accent);
  border: 1px solid rgba(var(--accent-rgb), 0.2);
}
.badge-green {
  background: rgba(16, 185, 129, 0.1);
  color: #10b981;
  border: 1px solid rgba(16, 185, 129, 0.2);
}
.badge-purple {
  background: rgba(167, 139, 250, 0.1);
  color: #a78bfa;
  border: 1px solid rgba(167, 139, 250, 0.2);
}

/* ── FOOTER LINKS ────────────────────────────────────────────── */
.footer-link {
  color: var(--text-muted);
  text-decoration: none;
  font-size: 0.82rem;
  transition: color 0.2s;
}
.footer-link:hover { color: var(--accent); }

/* ── BENTO GRID & TECHNICAL STYLES ───────────────────────────── */
.project-bento-card {
  transition: opacity 0.3s ease, transform 0.3s cubic-bezier(0.4, 0, 0.2, 1), border-color 0.3s, box-shadow 0.3s !important;
}

.project-bento-card:hover {
  transform: translateY(-6px) scale(1.01) !important;
  border-color: var(--accent) !important;
  box-shadow: 0 12px 40px rgba(var(--accent-rgb), 0.12) !important;
}

.project-bento-card:hover .tech-mockup {
  transform: scale(1.03);
  border-color: rgba(var(--accent-rgb), 0.25) !important;
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.6) !important;
}

.tech-mockup {
  transition: transform 0.4s cubic-bezier(0.25, 0.8, 0.25, 1), border-color 0.3s, box-shadow 0.3s;
}

/* Animations de terminal/console */
@keyframes pulseDots {
  0%, 100% { opacity: 0.3; }
  50% { opacity: 1; }
}

.animated-dots {
  animation: pulseDots 1.5s infinite steps(4);
}

.filter-pill.active {
  background: var(--bg-card) !important;
  color: var(--text-primary) !important;
  box-shadow: 0 2px 8px rgba(0,0,0,0.15);
}

.filter-pill:hover:not(.active) {
  color: var(--accent) !important;
}



```


## FICHIER: ./src/pages/index.astro

```astro vert{} sed s/js/javascript/;s/ts/typescript/
---
import Layout from '../layouts/Layout.astro';
import profile from '../content/profile.json';
import projects from '../content/projects.json';

// SVG arrow partagé pour les liens de projets
const arrowSvg = `<svg width="14" height="14" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"/></svg>`;
---

<Layout title={`${profile.fullName} - Portfolio`}>

  <!-- ══ HERO ══════════════════════════════════════════════════ -->
  <section id="accueil" style="min-height:100vh;padding:8rem 1.5rem 4rem;display:flex;align-items:center;justify-content:center;position:relative;overflow:hidden;">
    <div class="grid-bg"></div>
    <div style="position:absolute;top:20%;right:10%;width:320px;height:320px;background:rgba(var(--accent-rgb),0.04);border-radius:50%;filter:blur(80px);pointer-events:none;"></div>

    <div style="max-width:860px;margin:0 auto;text-align:center;position:relative;z-index:2;">

      <!-- Photo -->
      <div class="animate-fade-in" style="display:inline-block;position:relative;margin-bottom:1.5rem;">
        <div style="position:absolute;inset:-4px;border-radius:50%;background:var(--accent);opacity:0.12;filter:blur(16px);"></div>
        <img
          src="/profile.png" alt={profile.fullName}
          style="position:relative;width:120px;height:120px;border-radius:50%;object-fit:cover;border:2px solid var(--accent);box-shadow:0 0 24px rgba(var(--accent-rgb),0.18);"
        />
      </div>

      <h1 class="animate-fade-in-up delay-100" style="font-size:clamp(2.4rem,7vw,4.2rem);font-weight:700;line-height:1.1;margin:0 0 8px;color:var(--text-primary);">
        {profile.lastName} <span style="color:var(--accent);">{profile.name}</span>
      </h1>

      <h2 class="animate-fade-in-up delay-200" style="font-size:clamp(1rem,3vw,1.3rem);color:var(--text-secondary);margin:0 0 8px;font-weight:400;">
        {profile.title}
      </h2>

      <p class="animate-fade-in-up delay-200" style="font-family:'Fira Code',monospace;font-size:0.75rem;letter-spacing:0.22em;text-transform:uppercase;color:var(--accent);opacity:0.85;margin:0 0 1.5rem;">
        {profile.specialty}
      </p>

      <div class="animate-fade-in delay-300" style="display:flex;justify-content:center;margin-bottom:2rem;">
        <div class="hero-status">
          <div class="ping-wrapper">
            <span class="ping-ring"></span>
            <span class="ping-dot"></span>
          </div>
          <span style="font-size:0.62rem;font-family:'Fira Code',monospace;letter-spacing:0.14em;text-transform:uppercase;color:var(--text-muted);">
            Dernière mise à jour : <span style="color:var(--text-primary);">{profile.lastUpdate}</span>
          </span>
        </div>
      </div>

      <p class="animate-fade-in-up delay-300" style="color:var(--text-secondary);font-size:1.05rem;line-height:1.75;max-width:580px;margin:0 auto 2.5rem;">
        {profile.description}
      </p>

      <div class="animate-fade-in-up delay-400 cta-group" style="display:flex;gap:14px;justify-content:center;flex-wrap:wrap;">
        <a
          href={profile.cvPath}
          download
          onclick="window.trackClick('Download_CV',{})"
          class="btn-primary"
          style="letter-spacing:0.08em;"
        >
          TÉLÉCHARGER_CV
        </a>
        <a href="#contact" onclick="window.trackClick('Contact_Click',{})" class="btn-outline">
          ME_CONTACTER
        </a>
      </div>
    </div>

    <div style="position:absolute;bottom:32px;left:50%;transform:translateX(-50%);opacity:0.15;">
      <div style="width:1px;height:48px;background:linear-gradient(to bottom,var(--accent),transparent);animation:pulse 2s infinite;"></div>
    </div>
  </section>

  <!-- ══ PARCOURS ══════════════════════════════════════════════ -->
  <section id="parcours" class="section-alt" style="padding:5rem 1.5rem;">
    <div style="max-width:1280px;margin:0 auto;">
      <div style="text-align:center;margin-bottom:4rem;">
        <h2 class="section-title">Parcours Académique</h2>
        <div class="section-bar"></div>
      </div>

      <div style="max-width:720px;margin:0 auto;display:flex;flex-direction:column;gap:2.5rem;">

        <div class="timeline-line" style="position:relative;padding-left:2rem;">
          <div style="position:absolute;left:-7px;top:0;width:14px;height:14px;border-radius:50%;background:var(--accent);"></div>
          <div style="margin-bottom:6px;">
            <span style="display:inline-block;padding:2px 10px;border-radius:4px;font-size:0.68rem;font-family:'Fira Code',monospace;font-weight:600;background:var(--tag-bg);color:var(--accent);">2022 - Présent</span>
          </div>
          <h3 style="font-size:1.3rem;font-weight:700;color:var(--text-primary);margin:0 0 6px;">Génie Informatique 4e année</h3>
          <p style="color:var(--text-secondary);margin:0 0 4px;">École Nationale Supérieure Polytechnique de Yaoundé (ENSPY)</p>
          <p style="color:var(--text-muted);font-size:0.85rem;margin:0;">Yaoundé, Cameroun</p>
        </div>

        <div class="timeline-line" style="position:relative;padding-left:2rem;">
          <div style="position:absolute;left:-7px;top:0;width:14px;height:14px;border-radius:50%;background:var(--text-muted);"></div>
          <div style="margin-bottom:6px;">
            <span style="display:inline-block;padding:2px 10px;border-radius:4px;font-size:0.68rem;font-family:'Fira Code',monospace;font-weight:600;background:var(--tag-bg);color:var(--text-muted);">2021 - 2022</span>
          </div>
          <h3 style="font-size:1.3rem;font-weight:700;color:var(--text-primary);margin:0 0 6px;">Formation en Mathématiques</h3>
          <p style="color:var(--text-secondary);margin:0 0 4px;">Université de Yaoundé 1</p>
          <p style="color:var(--text-muted);font-size:0.85rem;margin:0;">Yaoundé, Cameroun</p>
        </div>

        <div class="timeline-line" style="position:relative;padding-left:2rem;">
          <div style="position:absolute;left:-7px;top:0;width:14px;height:14px;border-radius:50%;background:var(--text-muted);"></div>
          <div style="margin-bottom:6px;">
            <span style="display:inline-block;padding:2px 10px;border-radius:4px;font-size:0.68rem;font-family:'Fira Code',monospace;font-weight:600;background:var(--tag-bg);color:var(--text-muted);">2021</span>
          </div>
          <h3 style="font-size:1.3rem;font-weight:700;color:var(--text-primary);margin:0 0 6px;">Baccalauréat Série C</h3>
          <p style="color:var(--text-secondary);margin:0 0 4px;">Sciences Mathématiques</p>
          <p style="color:var(--text-muted);font-size:0.85rem;margin:0;">Cameroun</p>
        </div>

      </div>
    </div>
  </section>

  <!-- ══ COMPÉTENCES ═══════════════════════════════════════════ -->
  <section id="competences" class="section-dark" style="padding:5rem 1.5rem;">
    <div style="max-width:1280px;margin:0 auto;">
      <div style="text-align:center;margin-bottom:4rem;">
        <h2 class="section-title">Compétences Techniques</h2>
        <div class="section-bar"></div>
      </div>

      <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:1.5rem;">
        {profile.skills.map((skill) => (
          <div class="card" style="padding:1.5rem;" id={`card-${skill.id}`}>
            <h3 style={`font-size:1.05rem;font-weight:700;color:${skill.accentColor};margin:0 0 1rem;`}>
              {skill.category}
            </h3>
            <div style="display:flex;flex-wrap:wrap;gap:8px;margin-bottom:1rem;">
              {skill.items.map((item) => (
                <span class="tag">{item}</span>
              ))}
            </div>
            {skill.subSection && (
              <div style="border-top:1px solid var(--border-color);padding-top:1rem;">
                <p style="font-size:0.72rem;text-transform:uppercase;letter-spacing:0.1em;color:var(--text-muted);margin:0 0 8px;font-weight:600;">
                  {skill.subSection.label}
                </p>
                <div style="display:flex;flex-wrap:wrap;gap:8px;">
                  {skill.subSection.items.map((item) => (
                    <span class="tag">{item}</span>
                  ))}
                </div>
              </div>
            )}
          </div>
        ))}
      </div>
    </div>
  </section>

  <!-- ══ PROJETS ════════════════════════════════════════════════ -->
  <section id="projets" class="section-alt" style="padding:6rem 1.5rem; position:relative; overflow:hidden;">
    <div style="max-width:1200px;margin:0 auto;position:relative;z-index:2;">
      
      <!-- En-tête de section -->
      <div style="text-align:center;margin-bottom:3rem;">
        <span style="font-family:'Fira Code',monospace;font-size:0.75rem;letter-spacing:0.25em;text-transform:uppercase;color:var(--accent);">Engineering Lab</span>
        <h2 class="section-title" style="margin-top:0.5rem;letter-spacing:-0.03em;">Projets & Réalisations</h2>
        <div class="section-bar" style="margin-bottom:2rem;"></div>
        <p style="color:var(--text-secondary);font-size:0.95rem;max-width:600px;margin:0 auto;">
          Exploration de mes travaux de conception logicielle, d'infrastructure et de sécurité à travers des spécifications techniques concrètes.
        </p>
      </div>

      <!-- Contrôles de filtrage interactifs (Bento Pills) -->
      <div style="display:flex;justify-content:center;margin-bottom:4rem;">
        <div class="filter-pills-container" style="display:inline-flex;background:var(--bg-card-inner);padding:4px;border-radius:999px;border:1px solid var(--border-color);box-shadow:inset 0 2px 4px rgba(0,0,0,0.2);">
          <button class="filter-pill active" data-filter="all" style="font-family:'Fira Code',monospace;font-size:0.75rem;font-weight:600;color:var(--text-primary);background:transparent;border:none;padding:8px 18px;border-radius:999px;cursor:pointer;transition:all 0.25s ease;">
            ALL_PROJECTS
          </button>
          <button class="filter-pill" data-filter="completed" style="font-family:'Fira Code',monospace;font-size:0.75rem;font-weight:600;color:var(--text-secondary);background:transparent;border:none;padding:8px 18px;border-radius:999px;cursor:pointer;transition:all 0.25s ease;">
            PRODUCTIONS
          </button>
          <button class="filter-pill" data-filter="in-progress" style="font-family:'Fira Code',monospace;font-size:0.75rem;font-weight:600;color:var(--text-secondary);background:transparent;border:none;padding:8px 18px;border-radius:999px;cursor:pointer;transition:all 0.25s ease;">
            IN_PROGRESS
          </button>
        </div>
      </div>

      <!-- Grille Bento de Projets -->
      <div class="projects-bento-grid" style="display:grid;grid-template-columns:repeat(auto-fit, minmax(360px, 1fr));gap:2rem;align-items:stretch;">
        
        <!-- PROJETS TERMINÉS (Completed) -->
        {projects.completed.map((project) => (
          <div class="project-bento-card card" data-status="completed" style="display:flex;flex-direction:column;border-radius:12px;overflow:hidden;transition:all 0.3s cubic-bezier(0.4, 0, 0.2, 1);">
            
            <!-- Preview Visuelle Stylisée CSS (Console/Dashboard) -->
            <div class="bento-preview-zone" style={`background:${project.previewGradient};height:200px;position:relative;display:flex;align-items:center;justify-content:center;overflow:hidden;padding:1.5rem;`}>
              <div class="grid-bg" style="opacity:0.08;"></div>
              
              <!-- Simulation technique d'interface pour chaque projet -->
              {project.id === 'shuba' && (
                <div class="tech-mockup" style="width:90%;height:85%;background:#090d16;border-radius:6px;border:1px solid rgba(255,255,255,0.08);box-shadow:0 10px 30px rgba(0,0,0,0.5);font-family:'Fira Code',monospace;padding:10px;font-size:0.55rem;color:#10b981;overflow:hidden;display:flex;flex-direction:column;justify-content:space-between;">
                  <div style="display:flex;justify-content:between;border-bottom:1px solid rgba(255,255,255,0.05);padding-bottom:4px;margin-bottom:4px;color:rgba(255,255,255,0.4);">
                    <span>shuba-engine_cli: ~</span>
                    <span style="margin-left:auto;">active</span>
                  </div>
                  <div style="color:var(--text-secondary);flex:1;display:flex;flex-direction:column;gap:3px;justify-content:center;">
                    <div>> Booting multi-tenant router...</div>
                    <div style="color:#ffffff;">> Tenants detected: [tenant_1, tenant_2, tenant_3]</div>
                    <div style="color:var(--accent);">[OK] Databases isolated successfully.</div>
                  </div>
                  <div style="display:flex;align-items:center;gap:6px;color:rgba(255,255,255,0.3);border-top:1px solid rgba(255,255,255,0.05);padding-top:4px;font-size:0.5rem;">
                    <span style="width:6px;height:6px;background:#10b981;border-radius:50%;display:inline-block;animation:ping 1.5s infinite;"></span>
                    <span>127.0.0.1:8000</span>
                  </div>
                </div>
              )}

              {project.id === 'api-rsv' && (
                <div class="tech-mockup" style="width:90%;height:85%;background:#090d16;border-radius:6px;border:1px solid rgba(255,255,255,0.08);box-shadow:0 10px 30px rgba(0,0,0,0.5);font-family:'Fira Code',monospace;padding:10px;font-size:0.55rem;color:var(--accent);overflow:hidden;display:flex;flex-direction:column;justify-content:space-between;">
                  <div style="display:flex;justify-content:between;border-bottom:1px solid rgba(255,255,255,0.05);padding-bottom:4px;margin-bottom:4px;color:rgba(255,255,255,0.4);">
                    <span>kafka-cluster_broker: ~</span>
                    <span style="margin-left:auto;">connected</span>
                  </div>
                  <div style="color:var(--text-secondary);flex:1;display:flex;flex-direction:column;justify-content:center;gap:3px;">
                    <div>[Topic] reservation-event-flow</div>
                    <div style="display:flex;align-items:center;gap:4px;color:#ffffff;">
                      <span>Consuming...</span>
                      <span class="animated-dots" style="width:24px;overflow:hidden;white-space:nowrap;display:inline-block;">...</span>
                    </div>
                    <div style="color:#a78bfa;">[Partition 0] offset: 832819</div>
                  </div>
                  <div style="display:flex;align-items:center;gap:6px;color:rgba(255,255,255,0.3);border-top:1px solid rgba(255,255,255,0.05);padding-top:4px;font-size:0.5rem;">
                    <span style="width:6px;height:6px;background:var(--accent);border-radius:50%;display:inline-block;animation:ping 1.5s infinite;"></span>
                    <span>broker:9092</span>
                  </div>
                </div>
              )}

              {project.id === 'api-recommendation' && (
                <div class="tech-mockup" style="width:90%;height:85%;background:#090d16;border-radius:6px;border:1px solid rgba(255,255,255,0.08);box-shadow:0 10px 30px rgba(0,0,0,0.5);font-family:'Fira Code',monospace;padding:10px;font-size:0.55rem;color:#a78bfa;overflow:hidden;display:flex;flex-direction:column;justify-content:space-between;">
                  <div style="display:flex;justify-content:between;border-bottom:1px solid rgba(255,255,255,0.05);padding-bottom:4px;margin-bottom:4px;color:rgba(255,255,255,0.4);">
                    <span>scikit-prediction-model: ~</span>
                    <span style="margin-left:auto;">ready</span>
                  </div>
                  <div style="color:var(--text-secondary);flex:1;display:flex;flex-direction:column;justify-content:center;gap:3px;">
                    <div>Cosine Similarity Matrix compiled</div>
                    <div style="color:#ffffff;">[Matrix Size] 2400 x 2400</div>
                    <div style="color:#10b981;">Response Latency: 42ms</div>
                  </div>
                  <div style="display:flex;align-items:center;gap:6px;color:rgba(255,255,255,0.3);border-top:1px solid rgba(255,255,255,0.05);padding-top:4px;font-size:0.5rem;">
                    <span style="width:6px;height:6px;background:#a78bfa;border-radius:50%;display:inline-block;animation:ping 1.5s infinite;"></span>
                    <span>prediction:v1</span>
                  </div>
                </div>
              )}
            </div>

            <!-- Contenu textuel et technique -->
            <div style="padding:2rem;flex:1;display:flex;flex-direction:column;justify-content:space-between;background:var(--bg-card);">
              <div>
                <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:0.8rem;">
                  <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--accent);text-transform:uppercase;letter-spacing:0.1em;">{project.category}</span>
                  <span class="tag" style="background:rgba(16,185,129,0.08);color:#10b981;border:1px solid rgba(16,185,129,0.2);font-size:0.6rem;">✓ PRODUCTION</span>
                </div>

                <h3 style="font-size:1.25rem;font-weight:800;color:var(--text-primary);margin:0 0 0.8rem 0;letter-spacing:-0.02em;">{project.title}</h3>
                <p style="color:var(--text-secondary);font-size:0.9rem;line-height:1.6;margin-bottom:1.5rem;">{project.description}</p>
                
                <!-- Spécifications techniques Bento compactes et permanentes -->
                <div class="bento-specs-box" style="margin-bottom:1.8rem;padding:1rem;background:var(--bg-card-inner);border:1px solid var(--border-color);border-radius:6px;display:flex;flex-direction:column;gap:0.8rem;">
                  <div style="display:flex;align-items:flex-start;gap:8px;font-size:0.8rem;">
                    <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--text-muted);font-weight:600;min-width:60px;display:inline-block;padding-top:2px;">[ARCH]</span>
                    <span style="color:var(--text-secondary);line-height:1.4;">{project.technicalDetails.architecture}</span>
                  </div>
                  <div style="display:flex;align-items:center;gap:8px;font-size:0.8rem;border-top:1px dashed var(--border-color);padding-top:0.6rem;">
                    <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--text-muted);font-weight:600;min-width:60px;display:inline-block;">[TOOLS]</span>
                    <span style="color:var(--text-secondary);">{project.technicalDetails.tools.join(', ')}</span>
                  </div>
                  <div style="display:flex;align-items:flex-start;gap:8px;font-size:0.8rem;border-top:1px dashed var(--border-color);padding-top:0.6rem;">
                    <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--text-muted);font-weight:600;min-width:60px;display:inline-block;padding-top:2px;">[DEFI]</span>
                    <span style="color:var(--text-secondary);line-height:1.4;">{project.technicalDetails.challenges}</span>
                  </div>
                </div>
              </div>

              <!-- Actions/Liens -->
              <div style="display:flex;flex-wrap:wrap;gap:1.2rem;border-top:1px solid var(--border-color);padding-top:1.2rem;">
                {project.links.map((link) => (
                  <a
                    href={link.url}
                    target="_blank"
                    onclick={`window.trackClick('${link.trackEvent}',{name:'${link.trackName}'})`}
                    class="project-link"
                    style={`color:${link.colorStyle};font-size:0.82rem;font-family:'Fira Code',monospace;`}
                    set:html={`${link.label} ${arrowSvg}`}
                  />
                ))}
              </div>
            </div>

          </div>
        ))}

        <!-- PROJETS EN COURS (In Progress) -->
        {projects.in_progress.map((project) => (
          <div class="project-bento-card card" data-status="in-progress" style="display:flex;flex-direction:column;border-radius:12px;overflow:hidden;transition:all 0.3s cubic-bezier(0.4, 0, 0.2, 1);">
            
            <!-- Preview Visuelle Stylisée CSS (Console/Dashboard) -->
            <div class="bento-preview-zone" style={`background:${project.previewGradient};height:200px;position:relative;display:flex;align-items:center;justify-content:center;overflow:hidden;padding:1.5rem;`}>
              <div class="grid-bg" style="opacity:0.08;"></div>
              
              <!-- Simulation technique d'interface pour chaque projet -->
              {project.id === 'shieldguard' && (
                <div class="tech-mockup" style="width:90%;height:85%;background:#090d16;border-radius:6px;border:1px solid rgba(255,255,255,0.08);box-shadow:0 10px 30px rgba(0,0,0,0.5);font-family:'Fira Code',monospace;padding:10px;font-size:0.55rem;color:#ef4444;overflow:hidden;display:flex;flex-direction:column;justify-content:space-between;">
                  <div style="display:flex;justify-content:between;border-bottom:1px solid rgba(255,255,255,0.05);padding-bottom:4px;margin-bottom:4px;color:rgba(255,255,255,0.4);">
                    <span>cisco-audit-scanner: ~</span>
                    <span style="margin-left:auto;">scanning...</span>
                  </div>
                  <div style="color:var(--text-secondary);flex:1;display:flex;flex-direction:column;justify-content:center;gap:3px;">
                    <div>SSH connection: 192.168.1.1</div>
                    <div style="color:#ffffff;">> Checking VTY lines configs...</div>
                    <div style="color:#e2e8f0;background:rgba(239,68,68,0.2);padding:2px 4px;border-radius:2px;display:inline-block;width:max-content;">[WARN] No enable secret configured</div>
                  </div>
                  <div style="display:flex;align-items:center;gap:6px;color:rgba(255,255,255,0.3);border-top:1px solid rgba(255,255,255,0.05);padding-top:4px;font-size:0.5rem;">
                    <span style="width:6px;height:6px;background:#ef4444;border-radius:50%;display:inline-block;animation:ping 1.5s infinite;"></span>
                    <span>SSH:port_22</span>
                  </div>
                </div>
              )}

              {project.id === 'travyotei-v2' && (
                <div class="tech-mockup" style="width:90%;height:85%;background:#090d16;border-radius:6px;border:1px solid rgba(255,255,255,0.08);box-shadow:0 10px 30px rgba(0,0,0,0.5);font-family:'Fira Code',monospace;padding:10px;font-size:0.55rem;color:#f59e0b;overflow:hidden;display:flex;flex-direction:column;justify-content:space-between;">
                  <div style="display:flex;justify-content:between;border-bottom:1px solid rgba(255,255,255,0.05);padding-bottom:4px;margin-bottom:4px;color:rgba(255,255,255,0.4);">
                    <span>websocket-client-stream: ~</span>
                    <span style="margin-left:auto;">active</span>
                  </div>
                  <div style="color:var(--text-secondary);flex:1;display:flex;flex-direction:column;justify-content:center;gap:3px;">
                    <div>Connecting socket route: /seats/lock</div>
                    <div style="color:#ffffff;">> Listeners active for [agency_yaounde]</div>
                    <div style="color:#10b981;">[WS] Latency: 12ms</div>
                  </div>
                  <div style="display:flex;align-items:center;gap:6px;color:rgba(255,255,255,0.3);border-top:1px solid rgba(255,255,255,0.05);padding-top:4px;font-size:0.5rem;">
                    <span style="width:6px;height:6px;background:#f59e0b;border-radius:50%;display:inline-block;animation:ping 1.5s infinite;"></span>
                    <span>ws://host:4000</span>
                  </div>
                </div>
              )}
            </div>

            <!-- Contenu textuel et technique -->
            <div style="padding:2rem;flex:1;display:flex;flex-direction:column;justify-content:space-between;background:var(--bg-card);">
              <div>
                <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:0.8rem;">
                  <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--accent);text-transform:uppercase;letter-spacing:0.1em;">{project.category}</span>
                  <span class="tag" style="background:rgba(245,158,11,0.08);color:#f59e0b;border:1px solid rgba(245,158,11,0.2);font-size:0.6rem;">⚡ EN COURS</span>
                </div>

                <h3 style="font-size:1.25rem;font-weight:800;color:var(--text-primary);margin:0 0 0.8rem 0;letter-spacing:-0.02em;">{project.title}</h3>
                <p style="color:var(--text-secondary);font-size:0.9rem;line-height:1.6;margin-bottom:1.5rem;">{project.description}</p>
                
                <!-- Spécifications techniques Bento compactes et permanentes -->
                <div class="bento-specs-box" style="margin-bottom:1.8rem;padding:1rem;background:var(--bg-card-inner);border:1px solid var(--border-color);border-radius:6px;display:flex;flex-direction:column;gap:0.8rem;">
                  <div style="display:flex;align-items:flex-start;gap:8px;font-size:0.8rem;">
                    <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--text-muted);font-weight:600;min-width:60px;display:inline-block;padding-top:2px;">[ARCH]</span>
                    <span style="color:var(--text-secondary);line-height:1.4;">{project.technicalDetails.architecture}</span>
                  </div>
                  <div style="display:flex;align-items:center;gap:8px;font-size:0.8rem;border-top:1px dashed var(--border-color);padding-top:0.6rem;">
                    <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--text-muted);font-weight:600;min-width:60px;display:inline-block;">[TOOLS]</span>
                    <span style="color:var(--text-secondary);">{project.technicalDetails.tools.join(', ')}</span>
                  </div>
                  <div style="display:flex;align-items:flex-start;gap:8px;font-size:0.8rem;border-top:1px dashed var(--border-color);padding-top:0.6rem;">
                    <span style="font-family:'Fira Code',monospace;font-size:0.65rem;color:var(--text-muted);font-weight:600;min-width:60px;display:inline-block;padding-top:2px;">[DEFI]</span>
                    <span style="color:var(--text-secondary);line-height:1.4;">{project.technicalDetails.challenges}</span>
                  </div>
                </div>
              </div>

              <!-- Actions/Liens -->
              <div style="display:flex;flex-wrap:wrap;gap:1.2rem;border-top:1px solid var(--border-color);padding-top:1.2rem;">
                {project.links.map((link) => (
                  <a
                    href={link.url}
                    target="_blank"
                    onclick={`window.trackClick('${link.trackEvent}',{name:'${link.trackName}'})`}
                    class="project-link"
                    style={`color:${link.colorStyle};font-size:0.82rem;font-family:'Fira Code',monospace;`}
                    set:html={`${link.label} ${arrowSvg}`}
                  />
                ))}
              </div>
            </div>

          </div>
        ))}

      </div>

    </div>
  </section>

  <!-- Script de filtrage interactif client-side pour la grille Bento -->
  <script>
    const filterButtons = document.querySelectorAll('.filter-pill');
    const projectCards = document.querySelectorAll('.project-bento-card');

    filterButtons.forEach(button => {
      button.addEventListener('click', () => {
        // Gérer l'état actif des boutons
        filterButtons.forEach(btn => {
          btn.classList.remove('active');
          btn.setAttribute('style', "font-family:'Fira Code',monospace;font-size:0.75rem;font-weight:600;color:var(--text-secondary);background:transparent;border:none;padding:8px 18px;border-radius:999px;cursor:pointer;transition:all 0.25s ease;");
        });
        button.classList.add('active');
        button.setAttribute('style', "font-family:'Fira Code',monospace;font-size:0.75rem;font-weight:600;color:var(--text-primary);background:var(--bg-card);border:none;padding:8px 18px;border-radius:999px;cursor:pointer;transition:all 0.25s ease;box-shadow:0 2px 8px rgba(0,0,0,0.15);");

        const filterValue = button.getAttribute('data-filter');

        // Filtrer les cartes de projets avec un effet de fondu
        projectCards.forEach(card => {
          const cardStatus = card.getAttribute('data-status');
          const cardElement = card as HTMLElement;

          if (filterValue === 'all' || cardStatus === filterValue) {
            // Afficher le projet
            cardElement.style.display = 'flex';
            setTimeout(() => {
              cardElement.style.opacity = '1';
              cardElement.style.transform = 'scale(1)';
            }, 10);
          } else {
            // Masquer le projet
            cardElement.style.opacity = '0';
            cardElement.style.transform = 'scale(0.95)';
            setTimeout(() => {
              cardElement.style.display = 'none';
            }, 250);
          }
        });
      });
    });
  </script>



  <!-- ══ FAQ ═══════════════════════════════════════════════════ -->
  <section id="faq" class="section-dark" style="padding:5rem 1.5rem;">
    <div style="max-width:760px;margin:0 auto;">
      <div style="text-align:center;margin-bottom:4rem;">
        <h2 class="section-title">Questions Fréquentes</h2>
        <div class="section-bar"></div>
      </div>

      <div style="display:flex;flex-direction:column;gap:12px;">
        {profile.faq.map((item) => (
          <div class="faq-item" id={item.id}>
            <button class="faq-trigger" aria-expanded="false">
              <span class="faq-question">{item.question}</span>
              <svg class="faq-chevron" fill="none" stroke="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M19 9l-7 7-7-7"/>
              </svg>
            </button>
            <div class="faq-answer">
              <div class="faq-answer-inner">
                {item.answer}
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  </section>

  <!-- ══ CONTACT ═══════════════════════════════════════════════ -->
  <section id="contact" class="section-alt" style="padding:5rem 1.5rem;">
    <div style="max-width:900px;margin:0 auto;">
      <div style="text-align:center;margin-bottom:4rem;">
        <h2 class="section-title">Entrons en Contact</h2>
        <div class="section-bar" style="margin-bottom:1rem;"></div>
        <p style="color:var(--text-secondary);font-size:1rem;">N'hésitez pas à me contacter pour discuter de projets, opportunités ou collaborations</p>
      </div>

      <!-- Infos rapides -->
      <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:1rem;margin-bottom:2rem;">
        <div class="card" style="padding:1.75rem;text-align:center;">
          <div style="width:52px;height:52px;border-radius:50%;background:rgba(var(--accent-rgb),0.1);display:flex;align-items:center;justify-content:center;margin:0 auto 12px;">
            <svg width="24" height="24" fill="none" stroke="var(--accent)" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/>
            </svg>
          </div>
          <h3 style="font-size:1rem;font-weight:700;color:var(--text-primary);margin:0 0 6px;">Email</h3>
          <a
            href={`mailto:${profile.email}`}
            onclick="window.trackClick('Social_Link',{platform:'Gmail'})"
            style="color:var(--text-secondary);text-decoration:none;font-size:0.88rem;transition:color 0.2s;"
            onmouseover="this.style.color='var(--accent)'"
            onmouseout="this.style.color='var(--text-secondary)'"
          >
            {profile.email}
          </a>
        </div>

        <div class="card" style="padding:1.75rem;text-align:center;">
          <div style="width:52px;height:52px;border-radius:50%;background:rgba(167,139,250,0.1);display:flex;align-items:center;justify-content:center;margin:0 auto 12px;">
            <svg width="24" height="24" fill="none" stroke="#a78bfa" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a2 2 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"/>
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"/>
            </svg>
          </div>
          <h3 style="font-size:1rem;font-weight:700;color:var(--text-primary);margin:0 0 6px;">Localisation</h3>
          <p style="color:var(--text-secondary);font-size:0.88rem;margin:0;">{profile.location}</p>
        </div>
      </div>

      <!-- Formulaire d'email direct -->
      <div class="card" style="padding:2rem 2.5rem;margin-bottom:2rem;">
        <h3 style="font-size:1.1rem;font-weight:700;color:var(--text-primary);margin:0 0 6px;">Envoyer un message</h3>
        <p style="color:var(--text-muted);font-size:0.82rem;margin:0 0 1.5rem;font-family:'Fira Code',monospace;">
          Le message sera envoyé directement à {profile.email} — aucune redirection.
        </p>

        <form id="contact-form" data-access-key={profile.web3FormsKey} style="display:flex;flex-direction:column;gap:1.1rem;" novalidate>
          <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:1rem;">
            <div class="form-group">
              <label class="form-label" for="cf-name">Votre nom</label>
              <input class="form-input" type="text" id="cf-name" name="name" placeholder="Mbah Josué" required autocomplete="name" />
            </div>
            <div class="form-group">
              <label class="form-label" for="cf-email">Votre email</label>
              <input class="form-input" type="email" id="cf-email" name="email" placeholder="josue@exemple.com" required autocomplete="email" />
            </div>
          </div>

          <div class="form-group">
            <label class="form-label" for="cf-subject">Sujet</label>
            <input class="form-input" type="text" id="cf-subject" name="subject" placeholder="Stage, collaboration, projet, Questions..." required />
          </div>

          <div class="form-group">
            <label class="form-label" for="cf-message">Message</label>
            <textarea class="form-textarea" id="cf-message" name="message" placeholder="Ecrire votre message..." required rows="5"></textarea>
          </div>

          <div id="form-status" class="form-status"></div>

          <div>
            <button type="submit" class="btn-primary" id="cf-submit" style="min-width:180px;letter-spacing:0.06em;">
              ENVOYER LE MESSAGE
            </button>
          </div>
        </form>
      </div>

      <!-- Réseaux sociaux -->
      <div class="card" style="padding:1.5rem 2rem;">
        <h3 style="font-size:1rem;font-weight:700;color:var(--text-primary);margin:0 0 1rem;text-align:center;">Retrouvez-moi sur</h3>
        <div style="display:flex;flex-wrap:wrap;gap:12px;justify-content:center;">
          {profile.socials.map((social) => (
            <a
              href={social.url}
              target="_blank"
              onclick={`window.trackClick('${social.trackEvent}',{platform:'${social.trackPlatform}'})`}
              class="social-btn"
            >
              {social.id === 'github' && (
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" style="color:var(--text-secondary);">
                  <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/>
                </svg>
              )}
              {social.id === 'linkedin' && (
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" style="color:#0077b5;">
                  <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 01-2.063-2.065 2.064 2.064 0 112.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                </svg>
              )}
              {social.id === 'instagram' && (
                <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" style="color:#e1306c;">
                  <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zM12 0C8.741 0 8.333.014 7.053.072 2.695.272.273 2.69.073 7.052.014 8.333 0 8.741 0 12c0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98C8.333 23.986 8.741 24 12 24c3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98C15.668.014 15.259 0 12 0zm0 5.838a6.162 6.162 0 100 12.324 6.162 6.162 0 000-12.324zM12 16a4 4 0 110-8 4 4 0 010 8zm6.406-11.845a1.44 1.44 0 100 2.881 1.44 1.44 0 000-2.881z"/>
                </svg>
              )}
              {social.label}
            </a>
          ))}
        </div>
      </div>
    </div>
  </section>

</Layout>

<script>
  // ── FORMULAIRE DE CONTACT (Web3Forms) ────────────────────────
  const form      = document.getElementById('contact-form') as HTMLFormElement;
  const statusEl  = document.getElementById('form-status')!;
  const submitBtn = document.getElementById('cf-submit') as HTMLButtonElement;

  // ── Helpers UI ────────────────────────────────────────────────
  function setStatus(type: 'success' | 'error' | 'loading' | 'hidden', text = '') {
    if (type === 'hidden') {
      statusEl.className = 'form-status';
      statusEl.textContent = '';
      return;
    }
    if (type === 'loading') {
      statusEl.className = 'form-status loading';
      statusEl.textContent = text;
      return;
    }
    statusEl.className = `form-status ${type}`;
    statusEl.textContent = text;
  }

  function setSubmitState(loading: boolean) {
    submitBtn.disabled = loading;
    submitBtn.style.opacity = loading ? '0.65' : '1';
    submitBtn.style.cursor  = loading ? 'not-allowed' : '';
    submitBtn.textContent   = loading ? 'ENVOI EN COURS…' : 'ENVOYER LE MESSAGE';
  }

  function resetForm() {
    form.reset();
    setTimeout(() => setStatus('hidden'), 6000);
  }

  // ── Soumission ────────────────────────────────────────────────
  form?.addEventListener('submit', async (e) => {
    e.preventDefault();

    const name    = (document.getElementById('cf-name')    as HTMLInputElement).value.trim();
    const email   = (document.getElementById('cf-email')   as HTMLInputElement).value.trim();
    const subject = (document.getElementById('cf-subject') as HTMLInputElement).value.trim();
    const message = (document.getElementById('cf-message') as HTMLTextAreaElement).value.trim();

    // ── Validation côté client ────────────────────────────────
    if (!name || !email || !subject || !message) {
      setStatus('error', '⚠ Veuillez remplir tous les champs.');
      return;
    }
    const emailRx = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRx.test(email)) {
      setStatus('error', '⚠ Adresse email invalide.');
      return;
    }

    // ── Envoi via Web3Forms ───────────────────────────────────
    setStatus('loading', 'Envoi en cours…');
    setSubmitState(true);

    const accessKey = form.dataset.accessKey ?? '';

    const payload = {
      access_key: accessKey,
      name,
      email,
      subject,
      message,
      // Champs optionnels Web3Forms
      from_name:   'Portfolio – ' + name,
      botcheck:    '',   // honeypot
    };

    try {
      const res  = await fetch('https://api.web3forms.com/submit', {
        method:  'POST',
        headers: { 'Content-Type': 'application/json', Accept: 'application/json' },
        body:    JSON.stringify(payload),
      });
      const data = await res.json();

      if (res.ok && data.success) {
        setStatus('success', 'Message envoyé avec succès ! Je vous répondrai dès que possible.');
        resetForm();
        (window as any).trackClick?.('Contact_Form_Submit', { name, subject });
      } else {
        // Erreur retournée par l'API (ex. clé invalide)
        const apiMsg = data?.message ?? 'Erreur inconnue.';
        setStatus('error', `❌ Échec de l'envoi : ${apiMsg}`);
      }
    } catch {
      // Erreur réseau (offline, CORS, etc.)
      setStatus('error', '❌ Erreur réseau. Vérifiez votre connexion et réessayez.');
    } finally {
      setSubmitState(false);
    }
  });
</script>

```


## FICHIER: ./src/layouts/Layout.astro

```astro vert{} sed s/js/javascript/;s/ts/typescript/
---
import '../styles/global.css';
import Analytics from '@vercel/analytics/astro';
import SpeedInsights from '@vercel/speed-insights/astro';
import profile from '../content/profile.json';

interface Props {
  title: string;
  description?: string;
}

const { title, description = "Portfolio de Josué Mbah Moffo - Étudiant en Génie Informatique & Backend Developer orienté Sécurité" } = Astro.props;
---

<!DOCTYPE html>
<html lang="fr" data-theme="dark" class="scroll-smooth scroll-pt-16">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content={description} />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    <meta name="generator" content={Astro.generator} />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Fira+Code:wght@400;500;600&display=swap" rel="stylesheet" />
    <title>{title}</title>
  </head>

  <body>
    <!-- NAV -->
    <nav style="position:fixed;top:0;left:0;right:0;z-index:50;background:var(--bg-nav);border-bottom:1px solid var(--border-color);backdrop-filter:blur(14px);-webkit-backdrop-filter:blur(14px);transition:background 0.35s,border-color 0.35s;">
      <div style="max-width:1280px;margin:0 auto;padding:0 1.5rem;">
        <div style="display:flex;justify-content:space-between;align-items:center;height:64px;gap:12px;">

          <a href="#accueil" class="nav-logo">JMM.dev</a>

          <!-- Desktop nav -->
          <div style="display:none;" class="desktop-nav">
            <a href="#accueil" class="nav-link">Accueil</a>
            <a href="#parcours" class="nav-link">Parcours</a>
            <a href="#competences" class="nav-link">Compétences</a>
            <a href="#projets" class="nav-link">Projets</a>
            <a href="#faq" class="nav-link">FAQ</a>
            <a href="#contact" class="nav-link">Contact</a>
          </div>

          <div style="display:flex;align-items:center;gap:10px;">
            <!-- Theme Toggle - toujours visible -->
            <button id="theme-toggle" aria-label="Basculer le thème">
              <span class="toggle-icon" id="toggle-icon">☀️</span>
              <span class="toggle-label" id="toggle-label">LIGHT</span>
            </button>

            <!-- Burger -->
            <button id="mobile-menu-button" style="display:flex;flex-direction:column;justify-content:center;align-items:center;width:40px;height:40px;gap:5px;background:transparent;border:none;cursor:pointer;padding:0;" aria-label="Menu">
              <span id="bl1" style="display:block;width:22px;height:2px;background:var(--text-secondary);border-radius:2px;transition:all 0.3s ease;"></span>
              <span id="bl2" style="display:block;width:22px;height:2px;background:var(--text-secondary);border-radius:2px;transition:all 0.3s ease;"></span>
              <span id="bl3" style="display:block;width:16px;height:2px;background:var(--text-secondary);border-radius:2px;transition:all 0.3s ease;align-self:flex-start;"></span>
            </button>
          </div>
        </div>
      </div>
    </nav>

    <!-- Desktop nav shown via style -->
    <style>
      @media (min-width: 768px) {
        .desktop-nav { display:flex !important; gap:2rem; align-items:center; }
        #mobile-menu-button { display:none !important; }
      }
    </style>

    <!-- Mobile Menu Overlay -->
    <div id="mobile-menu" style="position:fixed;inset:0;z-index:40;display:flex;flex-direction:column;pointer-events:none;opacity:0;transition:opacity 0.35s cubic-bezier(0.4,0,0.2,1);">
      <div style="position:absolute;inset:0;background:var(--bg-primary);opacity:0.97;"></div>
      <div class="grid-bg" style="position:absolute;inset:0;"></div>
      <div style="position:absolute;top:25%;left:50%;transform:translateX(-50%);width:240px;height:240px;background:rgba(var(--accent-rgb),0.06);border-radius:50%;filter:blur(60px);pointer-events:none;"></div>

      <nav style="position:relative;z-index:10;display:flex;flex-direction:column;align-items:center;justify-content:center;flex:1;gap:4px;padding-top:72px;">
        <p style="font-size:0.6rem;font-family:'Fira Code',monospace;text-transform:uppercase;letter-spacing:0.3em;color:var(--text-muted);margin-bottom:20px;">Navigation</p>
        {[
          { href: '#accueil', label: 'Accueil', num: '01' },
          { href: '#parcours', label: 'Parcours', num: '02' },
          { href: '#competences', label: 'Compétences', num: '03' },
          { href: '#projets', label: 'Projets', num: '04' },
          { href: '#faq', label: 'FAQ', num: '05' },
          { href: '#contact', label: 'Contact', num: '06' },
        ].map(({ href, label, num }) => (
          <a href={href} data-mobile-link class="mobile-nav-link">
            <span class="mob-num">{num}</span>
            <span class="mob-label">{label}</span>
            <span class="mob-arrow">→</span>
          </a>
        ))}
        <a href={profile.cvPath} download data-mobile-link class="btn-primary" style="margin-top:28px;letter-spacing:0.08em;">TÉLÉCHARGER_CV</a>
      </nav>

      <div style="position:relative;z-index:10;display:flex;justify-content:center;padding-bottom:28px;">
        <span style="font-size:0.58rem;font-family:'Fira Code',monospace;color:var(--text-muted);text-transform:uppercase;letter-spacing:0.2em;">JMM.dev © 2026</span>
      </div>
    </div>

    <main>
      <slot />
    </main>

    <footer style="padding:3rem 1rem 2rem;">
      <div style="max-width:1280px;margin:0 auto;text-align:center;">
        <p style="font-weight:700;font-size:1rem;color:var(--text-primary);margin-bottom:8px;">Josué Mbah Moffo</p>
        <p style="color:var(--text-muted);font-size:0.82rem;max-width:420px;margin:0 auto 24px;line-height:1.7;">Ingénieur en formation à l'ENSPY. Spécialisation en développement sécurisé et administration systèmes.</p>
        <div style="display:flex;justify-content:center;gap:24px;flex-wrap:wrap;margin-bottom:24px;">
          <a href="https://github.com/JosueMoffo" target="_blank" class="footer-link">GitHub</a>
          <a href="https://www.linkedin.com/in/josue-mbah-moffo/" target="_blank" class="footer-link">LinkedIn</a>
          <a href="mailto:josuemoffo@gmail.com" class="footer-link">✉ Contact</a>
        </div>
      </div>
    </footer>

    <Analytics />
    <SpeedInsights />

    <script>
      import { track } from '@vercel/analytics';
      (window as any).trackClick = (eventName: string, properties = {}) => { track(eventName, properties); };
    </script>

    <script>
      // ── THEME ────────────────────────────────────────────────
      const html = document.documentElement;
      const btn = document.getElementById('theme-toggle')!;
      const icon = document.getElementById('toggle-icon')!;
      const label = document.getElementById('toggle-label')!;

      function applyTheme(theme: string) {
        html.setAttribute('data-theme', theme);
        localStorage.setItem('theme', theme);
        if (theme === 'light') {
          icon.textContent = '🌙';
          label.textContent = 'DARK';
        } else {
          icon.textContent = '☀️';
          label.textContent = 'LIGHT';
        }
      }

      const saved = localStorage.getItem('theme') || 'dark';
      applyTheme(saved);

      btn.addEventListener('click', () => {
        const current = html.getAttribute('data-theme');
        applyTheme(current === 'dark' ? 'light' : 'dark');
      });

      // ── MOBILE MENU ──────────────────────────────────────────
      const menuBtn = document.getElementById('mobile-menu-button')!;
      const menu = document.getElementById('mobile-menu')!;
      const l1 = document.getElementById('bl1')!;
      const l2 = document.getElementById('bl2')!;
      const l3 = document.getElementById('bl3')!;
      let open = false;

      function openMenu() {
        open = true;
        menu.style.opacity = '1';
        menu.style.pointerEvents = 'auto';
        document.body.style.overflow = 'hidden';
        l1.style.transform = 'translateY(7px) rotate(45deg)';
        l2.style.opacity = '0'; l2.style.transform = 'scaleX(0)';
        l3.style.transform = 'translateY(-7px) rotate(-45deg)';
        l3.style.width = '22px';
      }
      function closeMenu() {
        open = false;
        menu.style.opacity = '0';
        menu.style.pointerEvents = 'none';
        document.body.style.overflow = '';
        l1.style.transform = ''; l2.style.opacity = ''; l2.style.transform = '';
        l3.style.transform = ''; l3.style.width = '16px';
      }
      menuBtn.addEventListener('click', () => open ? closeMenu() : openMenu());
      document.querySelectorAll('[data-mobile-link]').forEach(l => l.addEventListener('click', closeMenu));

      // ── FAQ ACCORDION ─────────────────────────────────────────
      document.querySelectorAll('.faq-trigger').forEach(trigger => {
        trigger.addEventListener('click', () => {
          const item = trigger.closest('.faq-item')!;
          const isOpen = item.classList.contains('open');
          // Fermer tous
          document.querySelectorAll('.faq-item.open').forEach(i => i.classList.remove('open'));
          if (!isOpen) item.classList.add('open');
        });
      });
    </script>
  </body>
</html>

```


## FICHIER: ./README.md

```md vert{} sed s/js/javascript/;s/ts/typescript/
#  Portfolio: Josué Mbah Moffo

Bienvenue sur le dépôt de mon portfolio professionnel. C'est un site vitrine ultra-léger, performant et optimisé pour le SEO, conçu pour présenter mon parcours académique à l'ENSPY, mes compétences et mes projets.

##  Aperçu & Philosophie

-  **Design Night Blue** : Une esthétique épurée, sombre par défaut, moderne et hautement professionnelle.
-  **100% Responsive** : Expérience utilisateur fluide et adaptée sur mobile, tablette et desktop.
-  **Performance Maximale** : Construit avec Astro pour un chargement instantané et un score Lighthouse optimal.
-  **Focus Visuel** : Approche minimaliste sans icônes superflues, mettant l'accent sur la typographie et le jeu des couleurs.

---

##  Stack Technique

Le projet a été mis à niveau avec les dernières technologies de pointe de l'écosystème web :

- **Framework :** [Astro 5](https://astro.build/) (générateur de site statique ultra-rapide)
- **Styles :** [Tailwind CSS v4](https://tailwindcss.com/) (intégré nativement via le compilateur Vite)
- **Langage :** TypeScript
- **Fonts :** Playfair Display (titres), Inter (corps de texte), Fira Code (code/détails)
- **Analytics :** Vercel Analytics & Speed Insights (suivi des performances en temps réel)

---

##  Structure du Projet

```text
src/
├── layouts/
│   └── Layout.astro   # Structure globale HTML, métadonnées et gestion des thèmes
└── pages/
    └── index.astro    # Page d'accueil unique regroupant toutes les sections
```


## FICHIER: ./package-lock.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
{
  "name": "josue-portfolio",
  "version": "0.0.1",
  "lockfileVersion": 3,
  "requires": true,
  "packages": {
    "": {
      "name": "josue-portfolio",
      "version": "0.0.1",
      "dependencies": {
        "@tailwindcss/vite": "^4.1.18",
        "@vercel/analytics": "^1.6.1",
        "@vercel/speed-insights": "^1.3.1",
        "astro": "^5.17.1",
        "tailwindcss": "^4.1.18"
      }
    },
    "node_modules/@astrojs/compiler": {
      "version": "2.13.0",
      "resolved": "https://registry.npmjs.org/@astrojs/compiler/-/compiler-2.13.0.tgz",
      "integrity": "sha512-mqVORhUJViA28fwHYaWmsXSzLO9osbdZ5ImUfxBarqsYdMlPbqAqGJCxsNzvppp1BEzc1mJNjOVvQqeDN8Vspw==",
      "license": "MIT"
    },
    "node_modules/@astrojs/internal-helpers": {
      "version": "0.7.5",
      "resolved": "https://registry.npmjs.org/@astrojs/internal-helpers/-/internal-helpers-0.7.5.tgz",
      "integrity": "sha512-vreGnYSSKhAjFJCWAwe/CNhONvoc5lokxtRoZims+0wa3KbHBdPHSSthJsKxPd8d/aic6lWKpRTYGY/hsgK6EA==",
      "license": "MIT"
    },
    "node_modules/@astrojs/markdown-remark": {
      "version": "6.3.10",
      "resolved": "https://registry.npmjs.org/@astrojs/markdown-remark/-/markdown-remark-6.3.10.tgz",
      "integrity": "sha512-kk4HeYR6AcnzC4QV8iSlOfh+N8TZ3MEStxPyenyCtemqn8IpEATBFMTJcfrNW32dgpt6MY3oCkMM/Tv3/I4G3A==",
      "license": "MIT",
      "dependencies": {
        "@astrojs/internal-helpers": "0.7.5",
        "@astrojs/prism": "3.3.0",
        "github-slugger": "^2.0.0",
        "hast-util-from-html": "^2.0.3",
        "hast-util-to-text": "^4.0.2",
        "import-meta-resolve": "^4.2.0",
        "js-yaml": "^4.1.1",
        "mdast-util-definitions": "^6.0.0",
        "rehype-raw": "^7.0.0",
        "rehype-stringify": "^10.0.1",
        "remark-gfm": "^4.0.1",
        "remark-parse": "^11.0.0",
        "remark-rehype": "^11.1.2",
        "remark-smartypants": "^3.0.2",
        "shiki": "^3.19.0",
        "smol-toml": "^1.5.2",
        "unified": "^11.0.5",
        "unist-util-remove-position": "^5.0.0",
        "unist-util-visit": "^5.0.0",
        "unist-util-visit-parents": "^6.0.2",
        "vfile": "^6.0.3"
      }
    },
    "node_modules/@astrojs/prism": {
      "version": "3.3.0",
      "resolved": "https://registry.npmjs.org/@astrojs/prism/-/prism-3.3.0.tgz",
      "integrity": "sha512-q8VwfU/fDZNoDOf+r7jUnMC2//H2l0TuQ6FkGJL8vD8nw/q5KiL3DS1KKBI3QhI9UQhpJ5dc7AtqfbXWuOgLCQ==",
      "license": "MIT",
      "dependencies": {
        "prismjs": "^1.30.0"
      },
      "engines": {
        "node": "18.20.8 || ^20.3.0 || >=22.0.0"
      }
    },
    "node_modules/@astrojs/telemetry": {
      "version": "3.3.0",
      "resolved": "https://registry.npmjs.org/@astrojs/telemetry/-/telemetry-3.3.0.tgz",
      "integrity": "sha512-UFBgfeldP06qu6khs/yY+q1cDAaArM2/7AEIqQ9Cuvf7B1hNLq0xDrZkct+QoIGyjq56y8IaE2I3CTvG99mlhQ==",
      "license": "MIT",
      "dependencies": {
        "ci-info": "^4.2.0",
        "debug": "^4.4.0",
        "dlv": "^1.1.3",
        "dset": "^3.1.4",
        "is-docker": "^3.0.0",
        "is-wsl": "^3.1.0",
        "which-pm-runs": "^1.1.0"
      },
      "engines": {
        "node": "18.20.8 || ^20.3.0 || >=22.0.0"
      }
    },
    "node_modules/@babel/helper-string-parser": {
      "version": "7.27.1",
      "resolved": "https://registry.npmjs.org/@babel/helper-string-parser/-/helper-string-parser-7.27.1.tgz",
      "integrity": "sha512-qMlSxKbpRlAridDExk92nSobyDdpPijUq2DW6oDnUqd0iOGxmQjyqhMIihI9+zv4LPyZdRje2cavWPbCbWm3eA==",
      "license": "MIT",
      "engines": {
        "node": ">=6.9.0"
      }
    },
    "node_modules/@babel/helper-validator-identifier": {
      "version": "7.28.5",
      "resolved": "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.28.5.tgz",
      "integrity": "sha512-qSs4ifwzKJSV39ucNjsvc6WVHs6b7S03sOh2OcHF9UHfVPqWWALUsNUVzhSBiItjRZoLHx7nIarVjqKVusUZ1Q==",
      "license": "MIT",
      "engines": {
        "node": ">=6.9.0"
      }
    },
    "node_modules/@babel/parser": {
      "version": "7.28.6",
      "resolved": "https://registry.npmjs.org/@babel/parser/-/parser-7.28.6.tgz",
      "integrity": "sha512-TeR9zWR18BvbfPmGbLampPMW+uW1NZnJlRuuHso8i87QZNq2JRF9i6RgxRqtEq+wQGsS19NNTWr2duhnE49mfQ==",
      "license": "MIT",
      "dependencies": {
        "@babel/types": "^7.28.6"
      },
      "bin": {
        "parser": "bin/babel-parser.js"
      },
      "engines": {
        "node": ">=6.0.0"
      }
    },
    "node_modules/@babel/types": {
      "version": "7.28.6",
      "resolved": "https://registry.npmjs.org/@babel/types/-/types-7.28.6.tgz",
      "integrity": "sha512-0ZrskXVEHSWIqZM/sQZ4EV3jZJXRkio/WCxaqKZP1g//CEWEPSfeZFcms4XeKBCHU0ZKnIkdJeU/kF+eRp5lBg==",
      "license": "MIT",
      "dependencies": {
        "@babel/helper-string-parser": "^7.27.1",
        "@babel/helper-validator-identifier": "^7.28.5"
      },
      "engines": {
        "node": ">=6.9.0"
      }
    },
    "node_modules/@capsizecss/unpack": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/@capsizecss/unpack/-/unpack-4.0.0.tgz",
      "integrity": "sha512-VERIM64vtTP1C4mxQ5thVT9fK0apjPFobqybMtA1UdUujWka24ERHbRHFGmpbbhp73MhV+KSsHQH9C6uOTdEQA==",
      "license": "MIT",
      "dependencies": {
        "fontkitten": "^1.0.0"
      },
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@emnapi/runtime": {
      "version": "1.8.1",
      "resolved": "https://registry.npmjs.org/@emnapi/runtime/-/runtime-1.8.1.tgz",
      "integrity": "sha512-mehfKSMWjjNol8659Z8KxEMrdSJDDot5SXMq00dM8BN4o+CLNXQ0xH2V7EchNHV4RmbZLmmPdEaXZc5H2FXmDg==",
      "license": "MIT",
      "optional": true,
      "dependencies": {
        "tslib": "^2.4.0"
      }
    },
    "node_modules/@esbuild/aix-ppc64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/aix-ppc64/-/aix-ppc64-0.25.12.tgz",
      "integrity": "sha512-Hhmwd6CInZ3dwpuGTF8fJG6yoWmsToE+vYgD4nytZVxcu1ulHpUQRAB1UJ8+N1Am3Mz4+xOByoQoSZf4D+CpkA==",
      "cpu": [
        "ppc64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "aix"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/android-arm": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/android-arm/-/android-arm-0.25.12.tgz",
      "integrity": "sha512-VJ+sKvNA/GE7Ccacc9Cha7bpS8nyzVv0jdVgwNDaR4gDMC/2TTRc33Ip8qrNYUcpkOHUT5OZ0bUcNNVZQ9RLlg==",
      "cpu": [
        "arm"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "android"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/android-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/android-arm64/-/android-arm64-0.25.12.tgz",
      "integrity": "sha512-6AAmLG7zwD1Z159jCKPvAxZd4y/VTO0VkprYy+3N2FtJ8+BQWFXU+OxARIwA46c5tdD9SsKGZ/1ocqBS/gAKHg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "android"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/android-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/android-x64/-/android-x64-0.25.12.tgz",
      "integrity": "sha512-5jbb+2hhDHx5phYR2By8GTWEzn6I9UqR11Kwf22iKbNpYrsmRB18aX/9ivc5cabcUiAT/wM+YIZ6SG9QO6a8kg==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "android"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/darwin-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/darwin-arm64/-/darwin-arm64-0.25.12.tgz",
      "integrity": "sha512-N3zl+lxHCifgIlcMUP5016ESkeQjLj/959RxxNYIthIg+CQHInujFuXeWbWMgnTo4cp5XVHqFPmpyu9J65C1Yg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/darwin-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/darwin-x64/-/darwin-x64-0.25.12.tgz",
      "integrity": "sha512-HQ9ka4Kx21qHXwtlTUVbKJOAnmG1ipXhdWTmNXiPzPfWKpXqASVcWdnf2bnL73wgjNrFXAa3yYvBSd9pzfEIpA==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/freebsd-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/freebsd-arm64/-/freebsd-arm64-0.25.12.tgz",
      "integrity": "sha512-gA0Bx759+7Jve03K1S0vkOu5Lg/85dou3EseOGUes8flVOGxbhDDh/iZaoek11Y8mtyKPGF3vP8XhnkDEAmzeg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "freebsd"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/freebsd-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/freebsd-x64/-/freebsd-x64-0.25.12.tgz",
      "integrity": "sha512-TGbO26Yw2xsHzxtbVFGEXBFH0FRAP7gtcPE7P5yP7wGy7cXK2oO7RyOhL5NLiqTlBh47XhmIUXuGciXEqYFfBQ==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "freebsd"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-arm": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-arm/-/linux-arm-0.25.12.tgz",
      "integrity": "sha512-lPDGyC1JPDou8kGcywY0YILzWlhhnRjdof3UlcoqYmS9El818LLfJJc3PXXgZHrHCAKs/Z2SeZtDJr5MrkxtOw==",
      "cpu": [
        "arm"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-arm64/-/linux-arm64-0.25.12.tgz",
      "integrity": "sha512-8bwX7a8FghIgrupcxb4aUmYDLp8pX06rGh5HqDT7bB+8Rdells6mHvrFHHW2JAOPZUbnjUpKTLg6ECyzvas2AQ==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-ia32": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-ia32/-/linux-ia32-0.25.12.tgz",
      "integrity": "sha512-0y9KrdVnbMM2/vG8KfU0byhUN+EFCny9+8g202gYqSSVMonbsCfLjUO+rCci7pM0WBEtz+oK/PIwHkzxkyharA==",
      "cpu": [
        "ia32"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-loong64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-loong64/-/linux-loong64-0.25.12.tgz",
      "integrity": "sha512-h///Lr5a9rib/v1GGqXVGzjL4TMvVTv+s1DPoxQdz7l/AYv6LDSxdIwzxkrPW438oUXiDtwM10o9PmwS/6Z0Ng==",
      "cpu": [
        "loong64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-mips64el": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-mips64el/-/linux-mips64el-0.25.12.tgz",
      "integrity": "sha512-iyRrM1Pzy9GFMDLsXn1iHUm18nhKnNMWscjmp4+hpafcZjrr2WbT//d20xaGljXDBYHqRcl8HnxbX6uaA/eGVw==",
      "cpu": [
        "mips64el"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-ppc64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-ppc64/-/linux-ppc64-0.25.12.tgz",
      "integrity": "sha512-9meM/lRXxMi5PSUqEXRCtVjEZBGwB7P/D4yT8UG/mwIdze2aV4Vo6U5gD3+RsoHXKkHCfSxZKzmDssVlRj1QQA==",
      "cpu": [
        "ppc64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-riscv64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-riscv64/-/linux-riscv64-0.25.12.tgz",
      "integrity": "sha512-Zr7KR4hgKUpWAwb1f3o5ygT04MzqVrGEGXGLnj15YQDJErYu/BGg+wmFlIDOdJp0PmB0lLvxFIOXZgFRrdjR0w==",
      "cpu": [
        "riscv64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-s390x": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-s390x/-/linux-s390x-0.25.12.tgz",
      "integrity": "sha512-MsKncOcgTNvdtiISc/jZs/Zf8d0cl/t3gYWX8J9ubBnVOwlk65UIEEvgBORTiljloIWnBzLs4qhzPkJcitIzIg==",
      "cpu": [
        "s390x"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/linux-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/linux-x64/-/linux-x64-0.25.12.tgz",
      "integrity": "sha512-uqZMTLr/zR/ed4jIGnwSLkaHmPjOjJvnm6TVVitAa08SLS9Z0VM8wIRx7gWbJB5/J54YuIMInDquWyYvQLZkgw==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/netbsd-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/netbsd-arm64/-/netbsd-arm64-0.25.12.tgz",
      "integrity": "sha512-xXwcTq4GhRM7J9A8Gv5boanHhRa/Q9KLVmcyXHCTaM4wKfIpWkdXiMog/KsnxzJ0A1+nD+zoecuzqPmCRyBGjg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "netbsd"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/netbsd-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/netbsd-x64/-/netbsd-x64-0.25.12.tgz",
      "integrity": "sha512-Ld5pTlzPy3YwGec4OuHh1aCVCRvOXdH8DgRjfDy/oumVovmuSzWfnSJg+VtakB9Cm0gxNO9BzWkj6mtO1FMXkQ==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "netbsd"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/openbsd-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/openbsd-arm64/-/openbsd-arm64-0.25.12.tgz",
      "integrity": "sha512-fF96T6KsBo/pkQI950FARU9apGNTSlZGsv1jZBAlcLL1MLjLNIWPBkj5NlSz8aAzYKg+eNqknrUJ24QBybeR5A==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "openbsd"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/openbsd-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/openbsd-x64/-/openbsd-x64-0.25.12.tgz",
      "integrity": "sha512-MZyXUkZHjQxUvzK7rN8DJ3SRmrVrke8ZyRusHlP+kuwqTcfWLyqMOE3sScPPyeIXN/mDJIfGXvcMqCgYKekoQw==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "openbsd"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/openharmony-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/openharmony-arm64/-/openharmony-arm64-0.25.12.tgz",
      "integrity": "sha512-rm0YWsqUSRrjncSXGA7Zv78Nbnw4XL6/dzr20cyrQf7ZmRcsovpcRBdhD43Nuk3y7XIoW2OxMVvwuRvk9XdASg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "openharmony"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/sunos-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/sunos-x64/-/sunos-x64-0.25.12.tgz",
      "integrity": "sha512-3wGSCDyuTHQUzt0nV7bocDy72r2lI33QL3gkDNGkod22EsYl04sMf0qLb8luNKTOmgF/eDEDP5BFNwoBKH441w==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "sunos"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/win32-arm64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/win32-arm64/-/win32-arm64-0.25.12.tgz",
      "integrity": "sha512-rMmLrur64A7+DKlnSuwqUdRKyd3UE7oPJZmnljqEptesKM8wx9J8gx5u0+9Pq0fQQW8vqeKebwNXdfOyP+8Bsg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/win32-ia32": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/win32-ia32/-/win32-ia32-0.25.12.tgz",
      "integrity": "sha512-HkqnmmBoCbCwxUKKNPBixiWDGCpQGVsrQfJoVGYLPT41XWF8lHuE5N6WhVia2n4o5QK5M4tYr21827fNhi4byQ==",
      "cpu": [
        "ia32"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@esbuild/win32-x64": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/@esbuild/win32-x64/-/win32-x64-0.25.12.tgz",
      "integrity": "sha512-alJC0uCZpTFrSL0CCDjcgleBXPnCrEAhTBILpeAp7M/OFgoqtAetfBzX0xM00MUsVVPpVjlPuMbREqnZCXaTnA==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@img/colour": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/@img/colour/-/colour-1.0.0.tgz",
      "integrity": "sha512-A5P/LfWGFSl6nsckYtjw9da+19jB8hkJ6ACTGcDfEJ0aE+l2n2El7dsVM7UVHZQ9s2lmYMWlrS21YLy2IR1LUw==",
      "license": "MIT",
      "optional": true,
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/@img/sharp-darwin-arm64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-darwin-arm64/-/sharp-darwin-arm64-0.34.5.tgz",
      "integrity": "sha512-imtQ3WMJXbMY4fxb/Ndp6HBTNVtWCUI0WdobyheGf5+ad6xX8VIDO8u2xE4qc/fr08CKG/7dDseFtn6M6g/r3w==",
      "cpu": [
        "arm64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-darwin-arm64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-darwin-x64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-darwin-x64/-/sharp-darwin-x64-0.34.5.tgz",
      "integrity": "sha512-YNEFAF/4KQ/PeW0N+r+aVVsoIY0/qxxikF2SWdp+NRkmMB7y9LBZAVqQ4yhGCm/H3H270OSykqmQMKLBhBJDEw==",
      "cpu": [
        "x64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-darwin-x64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-libvips-darwin-arm64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-darwin-arm64/-/sharp-libvips-darwin-arm64-1.2.4.tgz",
      "integrity": "sha512-zqjjo7RatFfFoP0MkQ51jfuFZBnVE2pRiaydKJ1G/rHZvnsrHAOcQALIi9sA5co5xenQdTugCvtb1cuf78Vf4g==",
      "cpu": [
        "arm64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "darwin"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-darwin-x64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-darwin-x64/-/sharp-libvips-darwin-x64-1.2.4.tgz",
      "integrity": "sha512-1IOd5xfVhlGwX+zXv2N93k0yMONvUlANylbJw1eTah8K/Jtpi15KC+WSiaX/nBmbm2HxRM1gZ0nSdjSsrZbGKg==",
      "cpu": [
        "x64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "darwin"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linux-arm": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linux-arm/-/sharp-libvips-linux-arm-1.2.4.tgz",
      "integrity": "sha512-bFI7xcKFELdiNCVov8e44Ia4u2byA+l3XtsAj+Q8tfCwO6BQ8iDojYdvoPMqsKDkuoOo+X6HZA0s0q11ANMQ8A==",
      "cpu": [
        "arm"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linux-arm64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linux-arm64/-/sharp-libvips-linux-arm64-1.2.4.tgz",
      "integrity": "sha512-excjX8DfsIcJ10x1Kzr4RcWe1edC9PquDRRPx3YVCvQv+U5p7Yin2s32ftzikXojb1PIFc/9Mt28/y+iRklkrw==",
      "cpu": [
        "arm64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linux-ppc64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linux-ppc64/-/sharp-libvips-linux-ppc64-1.2.4.tgz",
      "integrity": "sha512-FMuvGijLDYG6lW+b/UvyilUWu5Ayu+3r2d1S8notiGCIyYU/76eig1UfMmkZ7vwgOrzKzlQbFSuQfgm7GYUPpA==",
      "cpu": [
        "ppc64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linux-riscv64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linux-riscv64/-/sharp-libvips-linux-riscv64-1.2.4.tgz",
      "integrity": "sha512-oVDbcR4zUC0ce82teubSm+x6ETixtKZBh/qbREIOcI3cULzDyb18Sr/Wcyx7NRQeQzOiHTNbZFF1UwPS2scyGA==",
      "cpu": [
        "riscv64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linux-s390x": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linux-s390x/-/sharp-libvips-linux-s390x-1.2.4.tgz",
      "integrity": "sha512-qmp9VrzgPgMoGZyPvrQHqk02uyjA0/QrTO26Tqk6l4ZV0MPWIW6LTkqOIov+J1yEu7MbFQaDpwdwJKhbJvuRxQ==",
      "cpu": [
        "s390x"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linux-x64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linux-x64/-/sharp-libvips-linux-x64-1.2.4.tgz",
      "integrity": "sha512-tJxiiLsmHc9Ax1bz3oaOYBURTXGIRDODBqhveVHonrHJ9/+k89qbLl0bcJns+e4t4rvaNBxaEZsFtSfAdquPrw==",
      "cpu": [
        "x64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linuxmusl-arm64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linuxmusl-arm64/-/sharp-libvips-linuxmusl-arm64-1.2.4.tgz",
      "integrity": "sha512-FVQHuwx1IIuNow9QAbYUzJ+En8KcVm9Lk5+uGUQJHaZmMECZmOlix9HnH7n1TRkXMS0pGxIJokIVB9SuqZGGXw==",
      "cpu": [
        "arm64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-libvips-linuxmusl-x64": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/@img/sharp-libvips-linuxmusl-x64/-/sharp-libvips-linuxmusl-x64-1.2.4.tgz",
      "integrity": "sha512-+LpyBk7L44ZIXwz/VYfglaX/okxezESc6UxDSoyo2Ks6Jxc4Y7sGjpgU9s4PMgqgjj1gZCylTieNamqA1MF7Dg==",
      "cpu": [
        "x64"
      ],
      "license": "LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "linux"
      ],
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-linux-arm": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linux-arm/-/sharp-linux-arm-0.34.5.tgz",
      "integrity": "sha512-9dLqsvwtg1uuXBGZKsxem9595+ujv0sJ6Vi8wcTANSFpwV/GONat5eCkzQo/1O6zRIkh0m/8+5BjrRr7jDUSZw==",
      "cpu": [
        "arm"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linux-arm": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linux-arm64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linux-arm64/-/sharp-linux-arm64-0.34.5.tgz",
      "integrity": "sha512-bKQzaJRY/bkPOXyKx5EVup7qkaojECG6NLYswgktOZjaXecSAeCWiZwwiFf3/Y+O1HrauiE3FVsGxFg8c24rZg==",
      "cpu": [
        "arm64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linux-arm64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linux-ppc64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linux-ppc64/-/sharp-linux-ppc64-0.34.5.tgz",
      "integrity": "sha512-7zznwNaqW6YtsfrGGDA6BRkISKAAE1Jo0QdpNYXNMHu2+0dTrPflTLNkpc8l7MUP5M16ZJcUvysVWWrMefZquA==",
      "cpu": [
        "ppc64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linux-ppc64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linux-riscv64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linux-riscv64/-/sharp-linux-riscv64-0.34.5.tgz",
      "integrity": "sha512-51gJuLPTKa7piYPaVs8GmByo7/U7/7TZOq+cnXJIHZKavIRHAP77e3N2HEl3dgiqdD/w0yUfiJnII77PuDDFdw==",
      "cpu": [
        "riscv64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linux-riscv64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linux-s390x": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linux-s390x/-/sharp-linux-s390x-0.34.5.tgz",
      "integrity": "sha512-nQtCk0PdKfho3eC5MrbQoigJ2gd1CgddUMkabUj+rBevs8tZ2cULOx46E7oyX+04WGfABgIwmMC0VqieTiR4jg==",
      "cpu": [
        "s390x"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linux-s390x": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linux-x64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linux-x64/-/sharp-linux-x64-0.34.5.tgz",
      "integrity": "sha512-MEzd8HPKxVxVenwAa+JRPwEC7QFjoPWuS5NZnBt6B3pu7EG2Ge0id1oLHZpPJdn3OQK+BQDiw9zStiHBTJQQQQ==",
      "cpu": [
        "x64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linux-x64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linuxmusl-arm64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linuxmusl-arm64/-/sharp-linuxmusl-arm64-0.34.5.tgz",
      "integrity": "sha512-fprJR6GtRsMt6Kyfq44IsChVZeGN97gTD331weR1ex1c1rypDEABN6Tm2xa1wE6lYb5DdEnk03NZPqA7Id21yg==",
      "cpu": [
        "arm64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linuxmusl-arm64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-linuxmusl-x64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-linuxmusl-x64/-/sharp-linuxmusl-x64-0.34.5.tgz",
      "integrity": "sha512-Jg8wNT1MUzIvhBFxViqrEhWDGzqymo3sV7z7ZsaWbZNDLXRJZoRGrjulp60YYtV4wfY8VIKcWidjojlLcWrd8Q==",
      "cpu": [
        "x64"
      ],
      "license": "Apache-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-libvips-linuxmusl-x64": "1.2.4"
      }
    },
    "node_modules/@img/sharp-wasm32": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-wasm32/-/sharp-wasm32-0.34.5.tgz",
      "integrity": "sha512-OdWTEiVkY2PHwqkbBI8frFxQQFekHaSSkUIJkwzclWZe64O1X4UlUjqqqLaPbUpMOQk6FBu/HtlGXNblIs0huw==",
      "cpu": [
        "wasm32"
      ],
      "license": "Apache-2.0 AND LGPL-3.0-or-later AND MIT",
      "optional": true,
      "dependencies": {
        "@emnapi/runtime": "^1.7.0"
      },
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-win32-arm64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-win32-arm64/-/sharp-win32-arm64-0.34.5.tgz",
      "integrity": "sha512-WQ3AgWCWYSb2yt+IG8mnC6Jdk9Whs7O0gxphblsLvdhSpSTtmu69ZG1Gkb6NuvxsNACwiPV6cNSZNzt0KPsw7g==",
      "cpu": [
        "arm64"
      ],
      "license": "Apache-2.0 AND LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-win32-ia32": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-win32-ia32/-/sharp-win32-ia32-0.34.5.tgz",
      "integrity": "sha512-FV9m/7NmeCmSHDD5j4+4pNI8Cp3aW+JvLoXcTUo0IqyjSfAZJ8dIUmijx1qaJsIiU+Hosw6xM5KijAWRJCSgNg==",
      "cpu": [
        "ia32"
      ],
      "license": "Apache-2.0 AND LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@img/sharp-win32-x64": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/@img/sharp-win32-x64/-/sharp-win32-x64-0.34.5.tgz",
      "integrity": "sha512-+29YMsqY2/9eFEiW93eqWnuLcWcufowXewwSNIT6UwZdUUCrM3oFjMWH/Z6/TMmb4hlFenmfAVbpWeup2jryCw==",
      "cpu": [
        "x64"
      ],
      "license": "Apache-2.0 AND LGPL-3.0-or-later",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      }
    },
    "node_modules/@jridgewell/gen-mapping": {
      "version": "0.3.13",
      "resolved": "https://registry.npmjs.org/@jridgewell/gen-mapping/-/gen-mapping-0.3.13.tgz",
      "integrity": "sha512-2kkt/7niJ6MgEPxF0bYdQ6etZaA+fQvDcLKckhy1yIQOzaoKjBBjSj63/aLVjYE3qhRt5dvM+uUyfCg6UKCBbA==",
      "license": "MIT",
      "dependencies": {
        "@jridgewell/sourcemap-codec": "^1.5.0",
        "@jridgewell/trace-mapping": "^0.3.24"
      }
    },
    "node_modules/@jridgewell/remapping": {
      "version": "2.3.5",
      "resolved": "https://registry.npmjs.org/@jridgewell/remapping/-/remapping-2.3.5.tgz",
      "integrity": "sha512-LI9u/+laYG4Ds1TDKSJW2YPrIlcVYOwi2fUC6xB43lueCjgxV4lffOCZCtYFiH6TNOX+tQKXx97T4IKHbhyHEQ==",
      "license": "MIT",
      "dependencies": {
        "@jridgewell/gen-mapping": "^0.3.5",
        "@jridgewell/trace-mapping": "^0.3.24"
      }
    },
    "node_modules/@jridgewell/resolve-uri": {
      "version": "3.1.2",
      "resolved": "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.2.tgz",
      "integrity": "sha512-bRISgCIjP20/tbWSPWMEi54QVPRZExkuD9lJL+UIxUKtwVJA8wW1Trb1jMs1RFXo1CBTNZ/5hpC9QvmKWdopKw==",
      "license": "MIT",
      "engines": {
        "node": ">=6.0.0"
      }
    },
    "node_modules/@jridgewell/sourcemap-codec": {
      "version": "1.5.5",
      "resolved": "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.5.5.tgz",
      "integrity": "sha512-cYQ9310grqxueWbl+WuIUIaiUaDcj7WOq5fVhEljNVgRfOUhY9fy2zTvfoqWsnebh8Sl70VScFbICvJnLKB0Og==",
      "license": "MIT"
    },
    "node_modules/@jridgewell/trace-mapping": {
      "version": "0.3.31",
      "resolved": "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.31.tgz",
      "integrity": "sha512-zzNR+SdQSDJzc8joaeP8QQoCQr8NuYx2dIIytl1QeBEZHJ9uW6hebsrYgbz8hJwUQao3TWCMtmfV8Nu1twOLAw==",
      "license": "MIT",
      "dependencies": {
        "@jridgewell/resolve-uri": "^3.1.0",
        "@jridgewell/sourcemap-codec": "^1.4.14"
      }
    },
    "node_modules/@oslojs/encoding": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/@oslojs/encoding/-/encoding-1.1.0.tgz",
      "integrity": "sha512-70wQhgYmndg4GCPxPPxPGevRKqTIJ2Nh4OkiMWmDAVYsTQ+Ta7Sq+rPevXyXGdzr30/qZBnyOalCszoMxlyldQ==",
      "license": "MIT"
    },
    "node_modules/@rollup/pluginutils": {
      "version": "5.3.0",
      "resolved": "https://registry.npmjs.org/@rollup/pluginutils/-/pluginutils-5.3.0.tgz",
      "integrity": "sha512-5EdhGZtnu3V88ces7s53hhfK5KSASnJZv8Lulpc04cWO3REESroJXg73DFsOmgbU2BhwV0E20bu2IDZb3VKW4Q==",
      "license": "MIT",
      "dependencies": {
        "@types/estree": "^1.0.0",
        "estree-walker": "^2.0.2",
        "picomatch": "^4.0.2"
      },
      "engines": {
        "node": ">=14.0.0"
      },
      "peerDependencies": {
        "rollup": "^1.20.0||^2.0.0||^3.0.0||^4.0.0"
      },
      "peerDependenciesMeta": {
        "rollup": {
          "optional": true
        }
      }
    },
    "node_modules/@rollup/pluginutils/node_modules/estree-walker": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/estree-walker/-/estree-walker-2.0.2.tgz",
      "integrity": "sha512-Rfkk/Mp/DL7JVje3u18FxFujQlTNR2q6QfMSMB7AvCBx91NGj/ba3kCfza0f6dVDbw7YlRf/nDrn7pQrCCyQ/w==",
      "license": "MIT"
    },
    "node_modules/@rollup/rollup-android-arm-eabi": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-android-arm-eabi/-/rollup-android-arm-eabi-4.57.1.tgz",
      "integrity": "sha512-A6ehUVSiSaaliTxai040ZpZ2zTevHYbvu/lDoeAteHI8QnaosIzm4qwtezfRg1jOYaUmnzLX1AOD6Z+UJjtifg==",
      "cpu": [
        "arm"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "android"
      ]
    },
    "node_modules/@rollup/rollup-android-arm64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-android-arm64/-/rollup-android-arm64-4.57.1.tgz",
      "integrity": "sha512-dQaAddCY9YgkFHZcFNS/606Exo8vcLHwArFZ7vxXq4rigo2bb494/xKMMwRRQW6ug7Js6yXmBZhSBRuBvCCQ3w==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "android"
      ]
    },
    "node_modules/@rollup/rollup-darwin-arm64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-darwin-arm64/-/rollup-darwin-arm64-4.57.1.tgz",
      "integrity": "sha512-crNPrwJOrRxagUYeMn/DZwqN88SDmwaJ8Cvi/TN1HnWBU7GwknckyosC2gd0IqYRsHDEnXf328o9/HC6OkPgOg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ]
    },
    "node_modules/@rollup/rollup-darwin-x64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-darwin-x64/-/rollup-darwin-x64-4.57.1.tgz",
      "integrity": "sha512-Ji8g8ChVbKrhFtig5QBV7iMaJrGtpHelkB3lsaKzadFBe58gmjfGXAOfI5FV0lYMH8wiqsxKQ1C9B0YTRXVy4w==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ]
    },
    "node_modules/@rollup/rollup-freebsd-arm64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-freebsd-arm64/-/rollup-freebsd-arm64-4.57.1.tgz",
      "integrity": "sha512-R+/WwhsjmwodAcz65guCGFRkMb4gKWTcIeLy60JJQbXrJ97BOXHxnkPFrP+YwFlaS0m+uWJTstrUA9o+UchFug==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "freebsd"
      ]
    },
    "node_modules/@rollup/rollup-freebsd-x64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-freebsd-x64/-/rollup-freebsd-x64-4.57.1.tgz",
      "integrity": "sha512-IEQTCHeiTOnAUC3IDQdzRAGj3jOAYNr9kBguI7MQAAZK3caezRrg0GxAb6Hchg4lxdZEI5Oq3iov/w/hnFWY9Q==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "freebsd"
      ]
    },
    "node_modules/@rollup/rollup-linux-arm-gnueabihf": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-arm-gnueabihf/-/rollup-linux-arm-gnueabihf-4.57.1.tgz",
      "integrity": "sha512-F8sWbhZ7tyuEfsmOxwc2giKDQzN3+kuBLPwwZGyVkLlKGdV1nvnNwYD0fKQ8+XS6hp9nY7B+ZeK01EBUE7aHaw==",
      "cpu": [
        "arm"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-arm-musleabihf": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-arm-musleabihf/-/rollup-linux-arm-musleabihf-4.57.1.tgz",
      "integrity": "sha512-rGfNUfn0GIeXtBP1wL5MnzSj98+PZe/AXaGBCRmT0ts80lU5CATYGxXukeTX39XBKsxzFpEeK+Mrp9faXOlmrw==",
      "cpu": [
        "arm"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-arm64-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-arm64-gnu/-/rollup-linux-arm64-gnu-4.57.1.tgz",
      "integrity": "sha512-MMtej3YHWeg/0klK2Qodf3yrNzz6CGjo2UntLvk2RSPlhzgLvYEB3frRvbEF2wRKh1Z2fDIg9KRPe1fawv7C+g==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-arm64-musl": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-arm64-musl/-/rollup-linux-arm64-musl-4.57.1.tgz",
      "integrity": "sha512-1a/qhaaOXhqXGpMFMET9VqwZakkljWHLmZOX48R0I/YLbhdxr1m4gtG1Hq7++VhVUmf+L3sTAf9op4JlhQ5u1Q==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-loong64-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-loong64-gnu/-/rollup-linux-loong64-gnu-4.57.1.tgz",
      "integrity": "sha512-QWO6RQTZ/cqYtJMtxhkRkidoNGXc7ERPbZN7dVW5SdURuLeVU7lwKMpo18XdcmpWYd0qsP1bwKPf7DNSUinhvA==",
      "cpu": [
        "loong64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-loong64-musl": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-loong64-musl/-/rollup-linux-loong64-musl-4.57.1.tgz",
      "integrity": "sha512-xpObYIf+8gprgWaPP32xiN5RVTi/s5FCR+XMXSKmhfoJjrpRAjCuuqQXyxUa/eJTdAE6eJ+KDKaoEqjZQxh3Gw==",
      "cpu": [
        "loong64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-ppc64-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-ppc64-gnu/-/rollup-linux-ppc64-gnu-4.57.1.tgz",
      "integrity": "sha512-4BrCgrpZo4hvzMDKRqEaW1zeecScDCR+2nZ86ATLhAoJ5FQ+lbHVD3ttKe74/c7tNT9c6F2viwB3ufwp01Oh2w==",
      "cpu": [
        "ppc64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-ppc64-musl": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-ppc64-musl/-/rollup-linux-ppc64-musl-4.57.1.tgz",
      "integrity": "sha512-NOlUuzesGauESAyEYFSe3QTUguL+lvrN1HtwEEsU2rOwdUDeTMJdO5dUYl/2hKf9jWydJrO9OL/XSSf65R5+Xw==",
      "cpu": [
        "ppc64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-riscv64-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-riscv64-gnu/-/rollup-linux-riscv64-gnu-4.57.1.tgz",
      "integrity": "sha512-ptA88htVp0AwUUqhVghwDIKlvJMD/fmL/wrQj99PRHFRAG6Z5nbWoWG4o81Nt9FT+IuqUQi+L31ZKAFeJ5Is+A==",
      "cpu": [
        "riscv64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-riscv64-musl": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-riscv64-musl/-/rollup-linux-riscv64-musl-4.57.1.tgz",
      "integrity": "sha512-S51t7aMMTNdmAMPpBg7OOsTdn4tySRQvklmL3RpDRyknk87+Sp3xaumlatU+ppQ+5raY7sSTcC2beGgvhENfuw==",
      "cpu": [
        "riscv64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-s390x-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-s390x-gnu/-/rollup-linux-s390x-gnu-4.57.1.tgz",
      "integrity": "sha512-Bl00OFnVFkL82FHbEqy3k5CUCKH6OEJL54KCyx2oqsmZnFTR8IoNqBF+mjQVcRCT5sB6yOvK8A37LNm/kPJiZg==",
      "cpu": [
        "s390x"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-x64-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-x64-gnu/-/rollup-linux-x64-gnu-4.57.1.tgz",
      "integrity": "sha512-ABca4ceT4N+Tv/GtotnWAeXZUZuM/9AQyCyKYyKnpk4yoA7QIAuBt6Hkgpw8kActYlew2mvckXkvx0FfoInnLg==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-linux-x64-musl": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-linux-x64-musl/-/rollup-linux-x64-musl-4.57.1.tgz",
      "integrity": "sha512-HFps0JeGtuOR2convgRRkHCekD7j+gdAuXM+/i6kGzQtFhlCtQkpwtNzkNj6QhCDp7DRJ7+qC/1Vg2jt5iSOFw==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ]
    },
    "node_modules/@rollup/rollup-openbsd-x64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-openbsd-x64/-/rollup-openbsd-x64-4.57.1.tgz",
      "integrity": "sha512-H+hXEv9gdVQuDTgnqD+SQffoWoc0Of59AStSzTEj/feWTBAnSfSD3+Dql1ZruJQxmykT/JVY0dE8Ka7z0DH1hw==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "openbsd"
      ]
    },
    "node_modules/@rollup/rollup-openharmony-arm64": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-openharmony-arm64/-/rollup-openharmony-arm64-4.57.1.tgz",
      "integrity": "sha512-4wYoDpNg6o/oPximyc/NG+mYUejZrCU2q+2w6YZqrAs2UcNUChIZXjtafAiiZSUc7On8v5NyNj34Kzj/Ltk6dQ==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "openharmony"
      ]
    },
    "node_modules/@rollup/rollup-win32-arm64-msvc": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-win32-arm64-msvc/-/rollup-win32-arm64-msvc-4.57.1.tgz",
      "integrity": "sha512-O54mtsV/6LW3P8qdTcamQmuC990HDfR71lo44oZMZlXU4tzLrbvTii87Ni9opq60ds0YzuAlEr/GNwuNluZyMQ==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ]
    },
    "node_modules/@rollup/rollup-win32-ia32-msvc": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-win32-ia32-msvc/-/rollup-win32-ia32-msvc-4.57.1.tgz",
      "integrity": "sha512-P3dLS+IerxCT/7D2q2FYcRdWRl22dNbrbBEtxdWhXrfIMPP9lQhb5h4Du04mdl5Woq05jVCDPCMF7Ub0NAjIew==",
      "cpu": [
        "ia32"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ]
    },
    "node_modules/@rollup/rollup-win32-x64-gnu": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-win32-x64-gnu/-/rollup-win32-x64-gnu-4.57.1.tgz",
      "integrity": "sha512-VMBH2eOOaKGtIJYleXsi2B8CPVADrh+TyNxJ4mWPnKfLB/DBUmzW+5m1xUrcwWoMfSLagIRpjUFeW5CO5hyciQ==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ]
    },
    "node_modules/@rollup/rollup-win32-x64-msvc": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/@rollup/rollup-win32-x64-msvc/-/rollup-win32-x64-msvc-4.57.1.tgz",
      "integrity": "sha512-mxRFDdHIWRxg3UfIIAwCm6NzvxG0jDX/wBN6KsQFTvKFqqg9vTrWUE68qEjHt19A5wwx5X5aUi2zuZT7YR0jrA==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ]
    },
    "node_modules/@shikijs/core": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/@shikijs/core/-/core-3.21.0.tgz",
      "integrity": "sha512-AXSQu/2n1UIQekY8euBJlvFYZIw0PHY63jUzGbrOma4wPxzznJXTXkri+QcHeBNaFxiiOljKxxJkVSoB3PjbyA==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/types": "3.21.0",
        "@shikijs/vscode-textmate": "^10.0.2",
        "@types/hast": "^3.0.4",
        "hast-util-to-html": "^9.0.5"
      }
    },
    "node_modules/@shikijs/engine-javascript": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/@shikijs/engine-javascript/-/engine-javascript-3.21.0.tgz",
      "integrity": "sha512-ATwv86xlbmfD9n9gKRiwuPpWgPENAWCLwYCGz9ugTJlsO2kOzhOkvoyV/UD+tJ0uT7YRyD530x6ugNSffmvIiQ==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/types": "3.21.0",
        "@shikijs/vscode-textmate": "^10.0.2",
        "oniguruma-to-es": "^4.3.4"
      }
    },
    "node_modules/@shikijs/engine-oniguruma": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/@shikijs/engine-oniguruma/-/engine-oniguruma-3.21.0.tgz",
      "integrity": "sha512-OYknTCct6qiwpQDqDdf3iedRdzj6hFlOPv5hMvI+hkWfCKs5mlJ4TXziBG9nyabLwGulrUjHiCq3xCspSzErYQ==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/types": "3.21.0",
        "@shikijs/vscode-textmate": "^10.0.2"
      }
    },
    "node_modules/@shikijs/langs": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/@shikijs/langs/-/langs-3.21.0.tgz",
      "integrity": "sha512-g6mn5m+Y6GBJ4wxmBYqalK9Sp0CFkUqfNzUy2pJglUginz6ZpWbaWjDB4fbQ/8SHzFjYbtU6Ddlp1pc+PPNDVA==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/types": "3.21.0"
      }
    },
    "node_modules/@shikijs/themes": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/@shikijs/themes/-/themes-3.21.0.tgz",
      "integrity": "sha512-BAE4cr9EDiZyYzwIHEk7JTBJ9CzlPuM4PchfcA5ao1dWXb25nv6hYsoDiBq2aZK9E3dlt3WB78uI96UESD+8Mw==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/types": "3.21.0"
      }
    },
    "node_modules/@shikijs/types": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/@shikijs/types/-/types-3.21.0.tgz",
      "integrity": "sha512-zGrWOxZ0/+0ovPY7PvBU2gIS9tmhSUUt30jAcNV0Bq0gb2S98gwfjIs1vxlmH5zM7/4YxLamT6ChlqqAJmPPjA==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/vscode-textmate": "^10.0.2",
        "@types/hast": "^3.0.4"
      }
    },
    "node_modules/@shikijs/vscode-textmate": {
      "version": "10.0.2",
      "resolved": "https://registry.npmjs.org/@shikijs/vscode-textmate/-/vscode-textmate-10.0.2.tgz",
      "integrity": "sha512-83yeghZ2xxin3Nj8z1NMd/NCuca+gsYXswywDy5bHvwlWL8tpTQmzGeUuHd9FC3E/SBEMvzJRwWEOz5gGes9Qg==",
      "license": "MIT"
    },
    "node_modules/@tailwindcss/node": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/node/-/node-4.1.18.tgz",
      "integrity": "sha512-DoR7U1P7iYhw16qJ49fgXUlry1t4CpXeErJHnQ44JgTSKMaZUdf17cfn5mHchfJ4KRBZRFA/Coo+MUF5+gOaCQ==",
      "license": "MIT",
      "dependencies": {
        "@jridgewell/remapping": "^2.3.4",
        "enhanced-resolve": "^5.18.3",
        "jiti": "^2.6.1",
        "lightningcss": "1.30.2",
        "magic-string": "^0.30.21",
        "source-map-js": "^1.2.1",
        "tailwindcss": "4.1.18"
      }
    },
    "node_modules/@tailwindcss/oxide": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide/-/oxide-4.1.18.tgz",
      "integrity": "sha512-EgCR5tTS5bUSKQgzeMClT6iCY3ToqE1y+ZB0AKldj809QXk1Y+3jB0upOYZrn9aGIzPtUsP7sX4QQ4XtjBB95A==",
      "license": "MIT",
      "engines": {
        "node": ">= 10"
      },
      "optionalDependencies": {
        "@tailwindcss/oxide-android-arm64": "4.1.18",
        "@tailwindcss/oxide-darwin-arm64": "4.1.18",
        "@tailwindcss/oxide-darwin-x64": "4.1.18",
        "@tailwindcss/oxide-freebsd-x64": "4.1.18",
        "@tailwindcss/oxide-linux-arm-gnueabihf": "4.1.18",
        "@tailwindcss/oxide-linux-arm64-gnu": "4.1.18",
        "@tailwindcss/oxide-linux-arm64-musl": "4.1.18",
        "@tailwindcss/oxide-linux-x64-gnu": "4.1.18",
        "@tailwindcss/oxide-linux-x64-musl": "4.1.18",
        "@tailwindcss/oxide-wasm32-wasi": "4.1.18",
        "@tailwindcss/oxide-win32-arm64-msvc": "4.1.18",
        "@tailwindcss/oxide-win32-x64-msvc": "4.1.18"
      }
    },
    "node_modules/@tailwindcss/oxide-android-arm64": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-android-arm64/-/oxide-android-arm64-4.1.18.tgz",
      "integrity": "sha512-dJHz7+Ugr9U/diKJA0W6N/6/cjI+ZTAoxPf9Iz9BFRF2GzEX8IvXxFIi/dZBloVJX/MZGvRuFA9rqwdiIEZQ0Q==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "android"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-darwin-arm64": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-darwin-arm64/-/oxide-darwin-arm64-4.1.18.tgz",
      "integrity": "sha512-Gc2q4Qhs660bhjyBSKgq6BYvwDz4G+BuyJ5H1xfhmDR3D8HnHCmT/BSkvSL0vQLy/nkMLY20PQ2OoYMO15Jd0A==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-darwin-x64": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-darwin-x64/-/oxide-darwin-x64-4.1.18.tgz",
      "integrity": "sha512-FL5oxr2xQsFrc3X9o1fjHKBYBMD1QZNyc1Xzw/h5Qu4XnEBi3dZn96HcHm41c/euGV+GRiXFfh2hUCyKi/e+yw==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-freebsd-x64": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-freebsd-x64/-/oxide-freebsd-x64-4.1.18.tgz",
      "integrity": "sha512-Fj+RHgu5bDodmV1dM9yAxlfJwkkWvLiRjbhuO2LEtwtlYlBgiAT4x/j5wQr1tC3SANAgD+0YcmWVrj8R9trVMA==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "freebsd"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-linux-arm-gnueabihf": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-linux-arm-gnueabihf/-/oxide-linux-arm-gnueabihf-4.1.18.tgz",
      "integrity": "sha512-Fp+Wzk/Ws4dZn+LV2Nqx3IilnhH51YZoRaYHQsVq3RQvEl+71VGKFpkfHrLM/Li+kt5c0DJe/bHXK1eHgDmdiA==",
      "cpu": [
        "arm"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-linux-arm64-gnu": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-linux-arm64-gnu/-/oxide-linux-arm64-gnu-4.1.18.tgz",
      "integrity": "sha512-S0n3jboLysNbh55Vrt7pk9wgpyTTPD0fdQeh7wQfMqLPM/Hrxi+dVsLsPrycQjGKEQk85Kgbx+6+QnYNiHalnw==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-linux-arm64-musl": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-linux-arm64-musl/-/oxide-linux-arm64-musl-4.1.18.tgz",
      "integrity": "sha512-1px92582HkPQlaaCkdRcio71p8bc8i/ap5807tPRDK/uw953cauQBT8c5tVGkOwrHMfc2Yh6UuxaH4vtTjGvHg==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-linux-x64-gnu": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-linux-x64-gnu/-/oxide-linux-x64-gnu-4.1.18.tgz",
      "integrity": "sha512-v3gyT0ivkfBLoZGF9LyHmts0Isc8jHZyVcbzio6Wpzifg/+5ZJpDiRiUhDLkcr7f/r38SWNe7ucxmGW3j3Kb/g==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-linux-x64-musl": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-linux-x64-musl/-/oxide-linux-x64-musl-4.1.18.tgz",
      "integrity": "sha512-bhJ2y2OQNlcRwwgOAGMY0xTFStt4/wyU6pvI6LSuZpRgKQwxTec0/3Scu91O8ir7qCR3AuepQKLU/kX99FouqQ==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-wasm32-wasi": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-wasm32-wasi/-/oxide-wasm32-wasi-4.1.18.tgz",
      "integrity": "sha512-LffYTvPjODiP6PT16oNeUQJzNVyJl1cjIebq/rWWBF+3eDst5JGEFSc5cWxyRCJ0Mxl+KyIkqRxk1XPEs9x8TA==",
      "bundleDependencies": [
        "@napi-rs/wasm-runtime",
        "@emnapi/core",
        "@emnapi/runtime",
        "@tybys/wasm-util",
        "@emnapi/wasi-threads",
        "tslib"
      ],
      "cpu": [
        "wasm32"
      ],
      "license": "MIT",
      "optional": true,
      "dependencies": {
        "@emnapi/core": "^1.7.1",
        "@emnapi/runtime": "^1.7.1",
        "@emnapi/wasi-threads": "^1.1.0",
        "@napi-rs/wasm-runtime": "^1.1.0",
        "@tybys/wasm-util": "^0.10.1",
        "tslib": "^2.4.0"
      },
      "engines": {
        "node": ">=14.0.0"
      }
    },
    "node_modules/@tailwindcss/oxide-win32-arm64-msvc": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-win32-arm64-msvc/-/oxide-win32-arm64-msvc-4.1.18.tgz",
      "integrity": "sha512-HjSA7mr9HmC8fu6bdsZvZ+dhjyGCLdotjVOgLA2vEqxEBZaQo9YTX4kwgEvPCpRh8o4uWc4J/wEoFzhEmjvPbA==",
      "cpu": [
        "arm64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/oxide-win32-x64-msvc": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/oxide-win32-x64-msvc/-/oxide-win32-x64-msvc-4.1.18.tgz",
      "integrity": "sha512-bJWbyYpUlqamC8dpR7pfjA0I7vdF6t5VpUGMWRkXVE3AXgIZjYUYAK7II1GNaxR8J1SSrSrppRar8G++JekE3Q==",
      "cpu": [
        "x64"
      ],
      "license": "MIT",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/@tailwindcss/vite": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/@tailwindcss/vite/-/vite-4.1.18.tgz",
      "integrity": "sha512-jVA+/UpKL1vRLg6Hkao5jldawNmRo7mQYrZtNHMIVpLfLhDml5nMRUo/8MwoX2vNXvnaXNNMedrMfMugAVX1nA==",
      "license": "MIT",
      "dependencies": {
        "@tailwindcss/node": "4.1.18",
        "@tailwindcss/oxide": "4.1.18",
        "tailwindcss": "4.1.18"
      },
      "peerDependencies": {
        "vite": "^5.2.0 || ^6 || ^7"
      }
    },
    "node_modules/@types/debug": {
      "version": "4.1.12",
      "resolved": "https://registry.npmjs.org/@types/debug/-/debug-4.1.12.tgz",
      "integrity": "sha512-vIChWdVG3LG1SMxEvI/AK+FWJthlrqlTu7fbrlywTkkaONwk/UAGaULXRlf8vkzFBLVm0zkMdCquhL5aOjhXPQ==",
      "license": "MIT",
      "dependencies": {
        "@types/ms": "*"
      }
    },
    "node_modules/@types/estree": {
      "version": "1.0.8",
      "resolved": "https://registry.npmjs.org/@types/estree/-/estree-1.0.8.tgz",
      "integrity": "sha512-dWHzHa2WqEXI/O1E9OjrocMTKJl2mSrEolh1Iomrv6U+JuNwaHXsXx9bLu5gG7BUWFIN0skIQJQ/L1rIex4X6w==",
      "license": "MIT"
    },
    "node_modules/@types/hast": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/@types/hast/-/hast-3.0.4.tgz",
      "integrity": "sha512-WPs+bbQw5aCj+x6laNGWLH3wviHtoCv/P3+otBhbOhJgG8qtpdAMlTCxLtsTWA7LH1Oh/bFCHsBn0TPS5m30EQ==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "*"
      }
    },
    "node_modules/@types/mdast": {
      "version": "4.0.4",
      "resolved": "https://registry.npmjs.org/@types/mdast/-/mdast-4.0.4.tgz",
      "integrity": "sha512-kGaNbPh1k7AFzgpud/gMdvIm5xuECykRR+JnWKQno9TAXVa6WIVCGTPvYGekIDL4uwCZQSYbUxNBSb1aUo79oA==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "*"
      }
    },
    "node_modules/@types/ms": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/@types/ms/-/ms-2.1.0.tgz",
      "integrity": "sha512-GsCCIZDE/p3i96vtEqx+7dBUGXrc7zeSK3wwPHIaRThS+9OhWIXRqzs4d6k1SVU8g91DrNRWxWUGhp5KXQb2VA==",
      "license": "MIT"
    },
    "node_modules/@types/nlcst": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/@types/nlcst/-/nlcst-2.0.3.tgz",
      "integrity": "sha512-vSYNSDe6Ix3q+6Z7ri9lyWqgGhJTmzRjZRqyq15N0Z/1/UnVsno9G/N40NBijoYx2seFDIl0+B2mgAb9mezUCA==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "*"
      }
    },
    "node_modules/@types/unist": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/@types/unist/-/unist-3.0.3.tgz",
      "integrity": "sha512-ko/gIFJRv177XgZsZcBwnqJN5x/Gien8qNOn0D5bQU/zAzVf9Zt3BlcUiLqhV9y4ARk0GbT3tnUiPNgnTXzc/Q==",
      "license": "MIT"
    },
    "node_modules/@ungap/structured-clone": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/@ungap/structured-clone/-/structured-clone-1.3.0.tgz",
      "integrity": "sha512-WmoN8qaIAo7WTYWbAZuG8PYEhn5fkz7dZrqTBZ7dtt//lL2Gwms1IcnQ5yHqjDfX8Ft5j4YzDM23f87zBfDe9g==",
      "license": "ISC"
    },
    "node_modules/@vercel/analytics": {
      "version": "1.6.1",
      "resolved": "https://registry.npmjs.org/@vercel/analytics/-/analytics-1.6.1.tgz",
      "integrity": "sha512-oH9He/bEM+6oKlv3chWuOOcp8Y6fo6/PSro8hEkgCW3pu9/OiCXiUpRUogDh3Fs3LH2sosDrx8CxeOLBEE+afg==",
      "license": "MPL-2.0",
      "peerDependencies": {
        "@remix-run/react": "^2",
        "@sveltejs/kit": "^1 || ^2",
        "next": ">= 13",
        "react": "^18 || ^19 || ^19.0.0-rc",
        "svelte": ">= 4",
        "vue": "^3",
        "vue-router": "^4"
      },
      "peerDependenciesMeta": {
        "@remix-run/react": {
          "optional": true
        },
        "@sveltejs/kit": {
          "optional": true
        },
        "next": {
          "optional": true
        },
        "react": {
          "optional": true
        },
        "svelte": {
          "optional": true
        },
        "vue": {
          "optional": true
        },
        "vue-router": {
          "optional": true
        }
      }
    },
    "node_modules/@vercel/speed-insights": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/@vercel/speed-insights/-/speed-insights-1.3.1.tgz",
      "integrity": "sha512-PbEr7FrMkUrGYvlcLHGkXdCkxnylCWePx7lPxxq36DNdfo9mcUjLOmqOyPDHAOgnfqgGGdmE3XI9L/4+5fr+vQ==",
      "license": "Apache-2.0",
      "peerDependencies": {
        "@sveltejs/kit": "^1 || ^2",
        "next": ">= 13",
        "react": "^18 || ^19 || ^19.0.0-rc",
        "svelte": ">= 4",
        "vue": "^3",
        "vue-router": "^4"
      },
      "peerDependenciesMeta": {
        "@sveltejs/kit": {
          "optional": true
        },
        "next": {
          "optional": true
        },
        "react": {
          "optional": true
        },
        "svelte": {
          "optional": true
        },
        "vue": {
          "optional": true
        },
        "vue-router": {
          "optional": true
        }
      }
    },
    "node_modules/acorn": {
      "version": "8.15.0",
      "resolved": "https://registry.npmjs.org/acorn/-/acorn-8.15.0.tgz",
      "integrity": "sha512-NZyJarBfL7nWwIq+FDL6Zp/yHEhePMNnnJ0y3qfieCrmNvYct8uvtiV41UvlSe6apAfk0fY1FbWx+NwfmpvtTg==",
      "license": "MIT",
      "bin": {
        "acorn": "bin/acorn"
      },
      "engines": {
        "node": ">=0.4.0"
      }
    },
    "node_modules/ansi-align": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/ansi-align/-/ansi-align-3.0.1.tgz",
      "integrity": "sha512-IOfwwBF5iczOjp/WeY4YxyjqAFMQoZufdQWDd19SEExbVLNXqvpzSJ/M7Za4/sCPmQ0+GRquoA7bGcINcxew6w==",
      "license": "ISC",
      "dependencies": {
        "string-width": "^4.1.0"
      }
    },
    "node_modules/ansi-align/node_modules/ansi-regex": {
      "version": "5.0.1",
      "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz",
      "integrity": "sha512-quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==",
      "license": "MIT",
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/ansi-align/node_modules/emoji-regex": {
      "version": "8.0.0",
      "resolved": "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz",
      "integrity": "sha512-MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A==",
      "license": "MIT"
    },
    "node_modules/ansi-align/node_modules/string-width": {
      "version": "4.2.3",
      "resolved": "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz",
      "integrity": "sha512-wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==",
      "license": "MIT",
      "dependencies": {
        "emoji-regex": "^8.0.0",
        "is-fullwidth-code-point": "^3.0.0",
        "strip-ansi": "^6.0.1"
      },
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/ansi-align/node_modules/strip-ansi": {
      "version": "6.0.1",
      "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz",
      "integrity": "sha512-Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==",
      "license": "MIT",
      "dependencies": {
        "ansi-regex": "^5.0.1"
      },
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/ansi-regex": {
      "version": "6.2.2",
      "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-6.2.2.tgz",
      "integrity": "sha512-Bq3SmSpyFHaWjPk8If9yc6svM8c56dB5BAtW4Qbw5jHTwwXXcTLoRMkpDJp6VL0XzlWaCHTXrkFURMYmD0sLqg==",
      "license": "MIT",
      "engines": {
        "node": ">=12"
      },
      "funding": {
        "url": "https://github.com/chalk/ansi-regex?sponsor=1"
      }
    },
    "node_modules/ansi-styles": {
      "version": "6.2.3",
      "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-6.2.3.tgz",
      "integrity": "sha512-4Dj6M28JB+oAH8kFkTLUo+a2jwOFkuqb3yucU0CANcRRUbxS0cP0nZYCGjcc3BNXwRIsUVmDGgzawme7zvJHvg==",
      "license": "MIT",
      "engines": {
        "node": ">=12"
      },
      "funding": {
        "url": "https://github.com/chalk/ansi-styles?sponsor=1"
      }
    },
    "node_modules/anymatch": {
      "version": "3.1.3",
      "resolved": "https://registry.npmjs.org/anymatch/-/anymatch-3.1.3.tgz",
      "integrity": "sha512-KMReFUr0B4t+D+OBkjR3KYqvocp2XaSzO55UcB6mgQMd3KbcE+mWTyvVV7D/zsdEbNnV6acZUutkiHQXvTr1Rw==",
      "license": "ISC",
      "dependencies": {
        "normalize-path": "^3.0.0",
        "picomatch": "^2.0.4"
      },
      "engines": {
        "node": ">= 8"
      }
    },
    "node_modules/anymatch/node_modules/picomatch": {
      "version": "2.3.1",
      "resolved": "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz",
      "integrity": "sha512-JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==",
      "license": "MIT",
      "engines": {
        "node": ">=8.6"
      },
      "funding": {
        "url": "https://github.com/sponsors/jonschlinkert"
      }
    },
    "node_modules/argparse": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/argparse/-/argparse-2.0.1.tgz",
      "integrity": "sha512-8+9WqebbFzpX9OR+Wa6O29asIogeRMzcGtAINdpMHHyAg10f05aSFVBbcEqGf/PXw1EjAZ+q2/bEBg3DvurK3Q==",
      "license": "Python-2.0"
    },
    "node_modules/aria-query": {
      "version": "5.3.2",
      "resolved": "https://registry.npmjs.org/aria-query/-/aria-query-5.3.2.tgz",
      "integrity": "sha512-COROpnaoap1E2F000S62r6A60uHZnmlvomhfyT2DlTcrY1OrBKn2UhH7qn5wTC9zMvD0AY7csdPSNwKP+7WiQw==",
      "license": "Apache-2.0",
      "engines": {
        "node": ">= 0.4"
      }
    },
    "node_modules/array-iterate": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/array-iterate/-/array-iterate-2.0.1.tgz",
      "integrity": "sha512-I1jXZMjAgCMmxT4qxXfPXa6SthSoE8h6gkSI9BGGNv8mP8G/v0blc+qFnZu6K42vTOiuME596QaLO0TP3Lk0xg==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/astro": {
      "version": "5.17.1",
      "resolved": "https://registry.npmjs.org/astro/-/astro-5.17.1.tgz",
      "integrity": "sha512-oD3tlxTaVWGq/Wfbqk6gxzVRz98xa/rYlpe+gU2jXJMSD01k6sEDL01ZlT8mVSYB/rMgnvIOfiQQ3BbLdN237A==",
      "license": "MIT",
      "dependencies": {
        "@astrojs/compiler": "^2.13.0",
        "@astrojs/internal-helpers": "0.7.5",
        "@astrojs/markdown-remark": "6.3.10",
        "@astrojs/telemetry": "3.3.0",
        "@capsizecss/unpack": "^4.0.0",
        "@oslojs/encoding": "^1.1.0",
        "@rollup/pluginutils": "^5.3.0",
        "acorn": "^8.15.0",
        "aria-query": "^5.3.2",
        "axobject-query": "^4.1.0",
        "boxen": "8.0.1",
        "ci-info": "^4.3.1",
        "clsx": "^2.1.1",
        "common-ancestor-path": "^1.0.1",
        "cookie": "^1.1.1",
        "cssesc": "^3.0.0",
        "debug": "^4.4.3",
        "deterministic-object-hash": "^2.0.2",
        "devalue": "^5.6.2",
        "diff": "^8.0.3",
        "dlv": "^1.1.3",
        "dset": "^3.1.4",
        "es-module-lexer": "^1.7.0",
        "esbuild": "^0.25.0",
        "estree-walker": "^3.0.3",
        "flattie": "^1.1.1",
        "fontace": "~0.4.0",
        "github-slugger": "^2.0.0",
        "html-escaper": "3.0.3",
        "http-cache-semantics": "^4.2.0",
        "import-meta-resolve": "^4.2.0",
        "js-yaml": "^4.1.1",
        "magic-string": "^0.30.21",
        "magicast": "^0.5.1",
        "mrmime": "^2.0.1",
        "neotraverse": "^0.6.18",
        "p-limit": "^6.2.0",
        "p-queue": "^8.1.1",
        "package-manager-detector": "^1.6.0",
        "piccolore": "^0.1.3",
        "picomatch": "^4.0.3",
        "prompts": "^2.4.2",
        "rehype": "^13.0.2",
        "semver": "^7.7.3",
        "shiki": "^3.21.0",
        "smol-toml": "^1.6.0",
        "svgo": "^4.0.0",
        "tinyexec": "^1.0.2",
        "tinyglobby": "^0.2.15",
        "tsconfck": "^3.1.6",
        "ultrahtml": "^1.6.0",
        "unifont": "~0.7.3",
        "unist-util-visit": "^5.0.0",
        "unstorage": "^1.17.4",
        "vfile": "^6.0.3",
        "vite": "^6.4.1",
        "vitefu": "^1.1.1",
        "xxhash-wasm": "^1.1.0",
        "yargs-parser": "^21.1.1",
        "yocto-spinner": "^0.2.3",
        "zod": "^3.25.76",
        "zod-to-json-schema": "^3.25.1",
        "zod-to-ts": "^1.2.0"
      },
      "bin": {
        "astro": "astro.js"
      },
      "engines": {
        "node": "18.20.8 || ^20.3.0 || >=22.0.0",
        "npm": ">=9.6.5",
        "pnpm": ">=7.1.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/astrodotbuild"
      },
      "optionalDependencies": {
        "sharp": "^0.34.0"
      }
    },
    "node_modules/axobject-query": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/axobject-query/-/axobject-query-4.1.0.tgz",
      "integrity": "sha512-qIj0G9wZbMGNLjLmg1PT6v2mE9AH2zlnADJD/2tC6E00hgmhUOfEB6greHPAfLRSufHqROIUTkw6E+M3lH0PTQ==",
      "license": "Apache-2.0",
      "engines": {
        "node": ">= 0.4"
      }
    },
    "node_modules/bail": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/bail/-/bail-2.0.2.tgz",
      "integrity": "sha512-0xO6mYd7JB2YesxDKplafRpsiOzPt9V02ddPCLbY1xYGPOX24NTyN50qnUxgCPcSoYMhKpAuBTjQoRZCAkUDRw==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/base-64": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/base-64/-/base-64-1.0.0.tgz",
      "integrity": "sha512-kwDPIFCGx0NZHog36dj+tHiwP4QMzsZ3AgMViUBKI0+V5n4U0ufTCUMhnQ04diaRI8EX/QcPfql7zlhZ7j4zgg==",
      "license": "MIT"
    },
    "node_modules/boolbase": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/boolbase/-/boolbase-1.0.0.tgz",
      "integrity": "sha512-JZOSA7Mo9sNGB8+UjSgzdLtokWAky1zbztM3WRLCbZ70/3cTANmQmOdR7y2g+J0e2WXywy1yS468tY+IruqEww==",
      "license": "ISC"
    },
    "node_modules/boxen": {
      "version": "8.0.1",
      "resolved": "https://registry.npmjs.org/boxen/-/boxen-8.0.1.tgz",
      "integrity": "sha512-F3PH5k5juxom4xktynS7MoFY+NUWH5LC4CnH11YB8NPew+HLpmBLCybSAEyb2F+4pRXhuhWqFesoQd6DAyc2hw==",
      "license": "MIT",
      "dependencies": {
        "ansi-align": "^3.0.1",
        "camelcase": "^8.0.0",
        "chalk": "^5.3.0",
        "cli-boxes": "^3.0.0",
        "string-width": "^7.2.0",
        "type-fest": "^4.21.0",
        "widest-line": "^5.0.0",
        "wrap-ansi": "^9.0.0"
      },
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/camelcase": {
      "version": "8.0.0",
      "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-8.0.0.tgz",
      "integrity": "sha512-8WB3Jcas3swSvjIeA2yvCJ+Miyz5l1ZmB6HFb9R1317dt9LCQoswg/BGrmAmkWVEszSrrg4RwmO46qIm2OEnSA==",
      "license": "MIT",
      "engines": {
        "node": ">=16"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/ccount": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/ccount/-/ccount-2.0.1.tgz",
      "integrity": "sha512-eyrF0jiFpY+3drT6383f1qhkbGsLSifNAjA61IUjZjmLCWjItY6LB9ft9YhoDgwfmclB2zhu51Lc7+95b8NRAg==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/chalk": {
      "version": "5.6.2",
      "resolved": "https://registry.npmjs.org/chalk/-/chalk-5.6.2.tgz",
      "integrity": "sha512-7NzBL0rN6fMUW+f7A6Io4h40qQlG+xGmtMxfbnH/K7TAtt8JQWVQK+6g0UXKMeVJoyV5EkkNsErQ8pVD3bLHbA==",
      "license": "MIT",
      "engines": {
        "node": "^12.17.0 || ^14.13 || >=16.0.0"
      },
      "funding": {
        "url": "https://github.com/chalk/chalk?sponsor=1"
      }
    },
    "node_modules/character-entities": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/character-entities/-/character-entities-2.0.2.tgz",
      "integrity": "sha512-shx7oQ0Awen/BRIdkjkvz54PnEEI/EjwXDSIZp86/KKdbafHh1Df/RYGBhn4hbe2+uKC9FnT5UCEdyPz3ai9hQ==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/character-entities-html4": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/character-entities-html4/-/character-entities-html4-2.1.0.tgz",
      "integrity": "sha512-1v7fgQRj6hnSwFpq1Eu0ynr/CDEw0rXo2B61qXrLNdHZmPKgb7fqS1a2JwF0rISo9q77jDI8VMEHoApn8qDoZA==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/character-entities-legacy": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/character-entities-legacy/-/character-entities-legacy-3.0.0.tgz",
      "integrity": "sha512-RpPp0asT/6ufRm//AJVwpViZbGM/MkjQFxJccQRHmISF/22NBtsHqAWmL+/pmkPWoIUJdWyeVleTl1wydHATVQ==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/chokidar": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/chokidar/-/chokidar-5.0.0.tgz",
      "integrity": "sha512-TQMmc3w+5AxjpL8iIiwebF73dRDF4fBIieAqGn9RGCWaEVwQ6Fb2cGe31Yns0RRIzii5goJ1Y7xbMwo1TxMplw==",
      "license": "MIT",
      "dependencies": {
        "readdirp": "^5.0.0"
      },
      "engines": {
        "node": ">= 20.19.0"
      },
      "funding": {
        "url": "https://paulmillr.com/funding/"
      }
    },
    "node_modules/ci-info": {
      "version": "4.4.0",
      "resolved": "https://registry.npmjs.org/ci-info/-/ci-info-4.4.0.tgz",
      "integrity": "sha512-77PSwercCZU2Fc4sX94eF8k8Pxte6JAwL4/ICZLFjJLqegs7kCuAsqqj/70NQF6TvDpgFjkubQB2FW2ZZddvQg==",
      "funding": [
        {
          "type": "github",
          "url": "https://github.com/sponsors/sibiraj-s"
        }
      ],
      "license": "MIT",
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/cli-boxes": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/cli-boxes/-/cli-boxes-3.0.0.tgz",
      "integrity": "sha512-/lzGpEWL/8PfI0BmBOPRwp0c/wFNX1RdUML3jK/RcSBA9T8mZDdQpqYBKtCFTOfQbwPqWEOpjqW+Fnayc0969g==",
      "license": "MIT",
      "engines": {
        "node": ">=10"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/clsx": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/clsx/-/clsx-2.1.1.tgz",
      "integrity": "sha512-eYm0QWBtUrBWZWG0d386OGAw16Z995PiOVo2B7bjWSbHedGl5e0ZWaq65kOGgUSNesEIDkB9ISbTg/JK9dhCZA==",
      "license": "MIT",
      "engines": {
        "node": ">=6"
      }
    },
    "node_modules/comma-separated-tokens": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/comma-separated-tokens/-/comma-separated-tokens-2.0.3.tgz",
      "integrity": "sha512-Fu4hJdvzeylCfQPp9SGWidpzrMs7tTrlu6Vb8XGaRGck8QSNZJJp538Wrb60Lax4fPwR64ViY468OIUTbRlGZg==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/commander": {
      "version": "11.1.0",
      "resolved": "https://registry.npmjs.org/commander/-/commander-11.1.0.tgz",
      "integrity": "sha512-yPVavfyCcRhmorC7rWlkHn15b4wDVgVmBA7kV4QVBsF7kv/9TKJAbAXVTxvTnwP8HHKjRCJDClKbciiYS7p0DQ==",
      "license": "MIT",
      "engines": {
        "node": ">=16"
      }
    },
    "node_modules/common-ancestor-path": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/common-ancestor-path/-/common-ancestor-path-1.0.1.tgz",
      "integrity": "sha512-L3sHRo1pXXEqX8VU28kfgUY+YGsk09hPqZiZmLacNib6XNTCM8ubYeT7ryXQw8asB1sKgcU5lkB7ONug08aB8w==",
      "license": "ISC"
    },
    "node_modules/cookie": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/cookie/-/cookie-1.1.1.tgz",
      "integrity": "sha512-ei8Aos7ja0weRpFzJnEA9UHJ/7XQmqglbRwnf2ATjcB9Wq874VKH9kfjjirM6UhU2/E5fFYadylyhFldcqSidQ==",
      "license": "MIT",
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/express"
      }
    },
    "node_modules/cookie-es": {
      "version": "1.2.2",
      "resolved": "https://registry.npmjs.org/cookie-es/-/cookie-es-1.2.2.tgz",
      "integrity": "sha512-+W7VmiVINB+ywl1HGXJXmrqkOhpKrIiVZV6tQuV54ZyQC7MMuBt81Vc336GMLoHBq5hV/F9eXgt5Mnx0Rha5Fg==",
      "license": "MIT"
    },
    "node_modules/crossws": {
      "version": "0.3.5",
      "resolved": "https://registry.npmjs.org/crossws/-/crossws-0.3.5.tgz",
      "integrity": "sha512-ojKiDvcmByhwa8YYqbQI/hg7MEU0NC03+pSdEq4ZUnZR9xXpwk7E43SMNGkn+JxJGPFtNvQ48+vV2p+P1ml5PA==",
      "license": "MIT",
      "dependencies": {
        "uncrypto": "^0.1.3"
      }
    },
    "node_modules/css-select": {
      "version": "5.2.2",
      "resolved": "https://registry.npmjs.org/css-select/-/css-select-5.2.2.tgz",
      "integrity": "sha512-TizTzUddG/xYLA3NXodFM0fSbNizXjOKhqiQQwvhlspadZokn1KDy0NZFS0wuEubIYAV5/c1/lAr0TaaFXEXzw==",
      "license": "BSD-2-Clause",
      "dependencies": {
        "boolbase": "^1.0.0",
        "css-what": "^6.1.0",
        "domhandler": "^5.0.2",
        "domutils": "^3.0.1",
        "nth-check": "^2.0.1"
      },
      "funding": {
        "url": "https://github.com/sponsors/fb55"
      }
    },
    "node_modules/css-tree": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/css-tree/-/css-tree-3.1.0.tgz",
      "integrity": "sha512-0eW44TGN5SQXU1mWSkKwFstI/22X2bG1nYzZTYMAWjylYURhse752YgbE4Cx46AC+bAvI+/dYTPRk1LqSUnu6w==",
      "license": "MIT",
      "dependencies": {
        "mdn-data": "2.12.2",
        "source-map-js": "^1.0.1"
      },
      "engines": {
        "node": "^10 || ^12.20.0 || ^14.13.0 || >=15.0.0"
      }
    },
    "node_modules/css-what": {
      "version": "6.2.2",
      "resolved": "https://registry.npmjs.org/css-what/-/css-what-6.2.2.tgz",
      "integrity": "sha512-u/O3vwbptzhMs3L1fQE82ZSLHQQfto5gyZzwteVIEyeaY5Fc7R4dapF/BvRoSYFeqfBk4m0V1Vafq5Pjv25wvA==",
      "license": "BSD-2-Clause",
      "engines": {
        "node": ">= 6"
      },
      "funding": {
        "url": "https://github.com/sponsors/fb55"
      }
    },
    "node_modules/cssesc": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/cssesc/-/cssesc-3.0.0.tgz",
      "integrity": "sha512-/Tb/JcjK111nNScGob5MNtsntNM1aCNUDipB/TkwZFhyDrrE47SOx/18wF2bbjgc3ZzCSKW1T5nt5EbFoAz/Vg==",
      "license": "MIT",
      "bin": {
        "cssesc": "bin/cssesc"
      },
      "engines": {
        "node": ">=4"
      }
    },
    "node_modules/csso": {
      "version": "5.0.5",
      "resolved": "https://registry.npmjs.org/csso/-/csso-5.0.5.tgz",
      "integrity": "sha512-0LrrStPOdJj+SPCCrGhzryycLjwcgUSHBtxNA8aIDxf0GLsRh1cKYhB00Gd1lDOS4yGH69+SNn13+TWbVHETFQ==",
      "license": "MIT",
      "dependencies": {
        "css-tree": "~2.2.0"
      },
      "engines": {
        "node": "^10 || ^12.20.0 || ^14.13.0 || >=15.0.0",
        "npm": ">=7.0.0"
      }
    },
    "node_modules/csso/node_modules/css-tree": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/css-tree/-/css-tree-2.2.1.tgz",
      "integrity": "sha512-OA0mILzGc1kCOCSJerOeqDxDQ4HOh+G8NbOJFOTgOCzpw7fCBubk0fEyxp8AgOL/jvLgYA/uV0cMbe43ElF1JA==",
      "license": "MIT",
      "dependencies": {
        "mdn-data": "2.0.28",
        "source-map-js": "^1.0.1"
      },
      "engines": {
        "node": "^10 || ^12.20.0 || ^14.13.0 || >=15.0.0",
        "npm": ">=7.0.0"
      }
    },
    "node_modules/csso/node_modules/mdn-data": {
      "version": "2.0.28",
      "resolved": "https://registry.npmjs.org/mdn-data/-/mdn-data-2.0.28.tgz",
      "integrity": "sha512-aylIc7Z9y4yzHYAJNuESG3hfhC+0Ibp/MAMiaOZgNv4pmEdFyfZhhhny4MNiAfWdBQ1RQ2mfDWmM1x8SvGyp8g==",
      "license": "CC0-1.0"
    },
    "node_modules/debug": {
      "version": "4.4.3",
      "resolved": "https://registry.npmjs.org/debug/-/debug-4.4.3.tgz",
      "integrity": "sha512-RGwwWnwQvkVfavKVt22FGLw+xYSdzARwm0ru6DhTVA3umU5hZc28V3kO4stgYryrTlLpuvgI9GiijltAjNbcqA==",
      "license": "MIT",
      "dependencies": {
        "ms": "^2.1.3"
      },
      "engines": {
        "node": ">=6.0"
      },
      "peerDependenciesMeta": {
        "supports-color": {
          "optional": true
        }
      }
    },
    "node_modules/decode-named-character-reference": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/decode-named-character-reference/-/decode-named-character-reference-1.3.0.tgz",
      "integrity": "sha512-GtpQYB283KrPp6nRw50q3U9/VfOutZOe103qlN7BPP6Ad27xYnOIWv4lPzo8HCAL+mMZofJ9KEy30fq6MfaK6Q==",
      "license": "MIT",
      "dependencies": {
        "character-entities": "^2.0.0"
      },
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/defu": {
      "version": "6.1.4",
      "resolved": "https://registry.npmjs.org/defu/-/defu-6.1.4.tgz",
      "integrity": "sha512-mEQCMmwJu317oSz8CwdIOdwf3xMif1ttiM8LTufzc3g6kR+9Pe236twL8j3IYT1F7GfRgGcW6MWxzZjLIkuHIg==",
      "license": "MIT"
    },
    "node_modules/dequal": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/dequal/-/dequal-2.0.3.tgz",
      "integrity": "sha512-0je+qPKHEMohvfRTCEo3CrPG6cAzAYgmzKyxRiYSSDkS6eGJdyVJm7WaYA5ECaAD9wLB2T4EEeymA5aFVcYXCA==",
      "license": "MIT",
      "engines": {
        "node": ">=6"
      }
    },
    "node_modules/destr": {
      "version": "2.0.5",
      "resolved": "https://registry.npmjs.org/destr/-/destr-2.0.5.tgz",
      "integrity": "sha512-ugFTXCtDZunbzasqBxrK93Ik/DRYsO6S/fedkWEMKqt04xZ4csmnmwGDBAb07QWNaGMAmnTIemsYZCksjATwsA==",
      "license": "MIT"
    },
    "node_modules/detect-libc": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/detect-libc/-/detect-libc-2.1.2.tgz",
      "integrity": "sha512-Btj2BOOO83o3WyH59e8MgXsxEQVcarkUOpEYrubB0urwnN10yQ364rsiByU11nZlqWYZm05i/of7io4mzihBtQ==",
      "license": "Apache-2.0",
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/deterministic-object-hash": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/deterministic-object-hash/-/deterministic-object-hash-2.0.2.tgz",
      "integrity": "sha512-KxektNH63SrbfUyDiwXqRb1rLwKt33AmMv+5Nhsw1kqZ13SJBRTgZHtGbE+hH3a1mVW1cz+4pqSWVPAtLVXTzQ==",
      "license": "MIT",
      "dependencies": {
        "base-64": "^1.0.0"
      },
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/devalue": {
      "version": "5.6.2",
      "resolved": "https://registry.npmjs.org/devalue/-/devalue-5.6.2.tgz",
      "integrity": "sha512-nPRkjWzzDQlsejL1WVifk5rvcFi/y1onBRxjaFMjZeR9mFpqu2gmAZ9xUB9/IEanEP/vBtGeGganC/GO1fmufg==",
      "license": "MIT"
    },
    "node_modules/devlop": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/devlop/-/devlop-1.1.0.tgz",
      "integrity": "sha512-RWmIqhcFf1lRYBvNmr7qTNuyCt/7/ns2jbpp1+PalgE/rDQcBT0fioSMUpJ93irlUhC5hrg4cYqe6U+0ImW0rA==",
      "license": "MIT",
      "dependencies": {
        "dequal": "^2.0.0"
      },
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/diff": {
      "version": "8.0.3",
      "resolved": "https://registry.npmjs.org/diff/-/diff-8.0.3.tgz",
      "integrity": "sha512-qejHi7bcSD4hQAZE0tNAawRK1ZtafHDmMTMkrrIGgSLl7hTnQHmKCeB45xAcbfTqK2zowkM3j3bHt/4b/ARbYQ==",
      "license": "BSD-3-Clause",
      "engines": {
        "node": ">=0.3.1"
      }
    },
    "node_modules/dlv": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/dlv/-/dlv-1.1.3.tgz",
      "integrity": "sha512-+HlytyjlPKnIG8XuRG8WvmBP8xs8P71y+SKKS6ZXWoEgLuePxtDoUEiH7WkdePWrQ5JBpE6aoVqfZfJUQkjXwA==",
      "license": "MIT"
    },
    "node_modules/dom-serializer": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/dom-serializer/-/dom-serializer-2.0.0.tgz",
      "integrity": "sha512-wIkAryiqt/nV5EQKqQpo3SToSOV9J0DnbJqwK7Wv/Trc92zIAYZ4FlMu+JPFW1DfGFt81ZTCGgDEabffXeLyJg==",
      "license": "MIT",
      "dependencies": {
        "domelementtype": "^2.3.0",
        "domhandler": "^5.0.2",
        "entities": "^4.2.0"
      },
      "funding": {
        "url": "https://github.com/cheeriojs/dom-serializer?sponsor=1"
      }
    },
    "node_modules/dom-serializer/node_modules/entities": {
      "version": "4.5.0",
      "resolved": "https://registry.npmjs.org/entities/-/entities-4.5.0.tgz",
      "integrity": "sha512-V0hjH4dGPh9Ao5p0MoRY6BVqtwCjhz6vI5LT8AJ55H+4g9/4vbHx1I54fS0XuclLhDHArPQCiMjDxjaL8fPxhw==",
      "license": "BSD-2-Clause",
      "engines": {
        "node": ">=0.12"
      },
      "funding": {
        "url": "https://github.com/fb55/entities?sponsor=1"
      }
    },
    "node_modules/domelementtype": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/domelementtype/-/domelementtype-2.3.0.tgz",
      "integrity": "sha512-OLETBj6w0OsagBwdXnPdN0cnMfF9opN69co+7ZrbfPGrdpPVNBUj02spi6B1N7wChLQiPn4CSH/zJvXw56gmHw==",
      "funding": [
        {
          "type": "github",
          "url": "https://github.com/sponsors/fb55"
        }
      ],
      "license": "BSD-2-Clause"
    },
    "node_modules/domhandler": {
      "version": "5.0.3",
      "resolved": "https://registry.npmjs.org/domhandler/-/domhandler-5.0.3.tgz",
      "integrity": "sha512-cgwlv/1iFQiFnU96XXgROh8xTeetsnJiDsTc7TYCLFd9+/WNkIqPTxiM/8pSd8VIrhXGTf1Ny1q1hquVqDJB5w==",
      "license": "BSD-2-Clause",
      "dependencies": {
        "domelementtype": "^2.3.0"
      },
      "engines": {
        "node": ">= 4"
      },
      "funding": {
        "url": "https://github.com/fb55/domhandler?sponsor=1"
      }
    },
    "node_modules/domutils": {
      "version": "3.2.2",
      "resolved": "https://registry.npmjs.org/domutils/-/domutils-3.2.2.tgz",
      "integrity": "sha512-6kZKyUajlDuqlHKVX1w7gyslj9MPIXzIFiz/rGu35uC1wMi+kMhQwGhl4lt9unC9Vb9INnY9Z3/ZA3+FhASLaw==",
      "license": "BSD-2-Clause",
      "dependencies": {
        "dom-serializer": "^2.0.0",
        "domelementtype": "^2.3.0",
        "domhandler": "^5.0.3"
      },
      "funding": {
        "url": "https://github.com/fb55/domutils?sponsor=1"
      }
    },
    "node_modules/dset": {
      "version": "3.1.4",
      "resolved": "https://registry.npmjs.org/dset/-/dset-3.1.4.tgz",
      "integrity": "sha512-2QF/g9/zTaPDc3BjNcVTGoBbXBgYfMTTceLaYcFJ/W9kggFUkhxD/hMEeuLKbugyef9SqAx8cpgwlIP/jinUTA==",
      "license": "MIT",
      "engines": {
        "node": ">=4"
      }
    },
    "node_modules/emoji-regex": {
      "version": "10.6.0",
      "resolved": "https://registry.npmjs.org/emoji-regex/-/emoji-regex-10.6.0.tgz",
      "integrity": "sha512-toUI84YS5YmxW219erniWD0CIVOo46xGKColeNQRgOzDorgBi1v4D71/OFzgD9GO2UGKIv1C3Sp8DAn0+j5w7A==",
      "license": "MIT"
    },
    "node_modules/enhanced-resolve": {
      "version": "5.18.4",
      "resolved": "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-5.18.4.tgz",
      "integrity": "sha512-LgQMM4WXU3QI+SYgEc2liRgznaD5ojbmY3sb8LxyguVkIg5FxdpTkvk72te2R38/TGKxH634oLxXRGY6d7AP+Q==",
      "license": "MIT",
      "dependencies": {
        "graceful-fs": "^4.2.4",
        "tapable": "^2.2.0"
      },
      "engines": {
        "node": ">=10.13.0"
      }
    },
    "node_modules/entities": {
      "version": "6.0.1",
      "resolved": "https://registry.npmjs.org/entities/-/entities-6.0.1.tgz",
      "integrity": "sha512-aN97NXWF6AWBTahfVOIrB/NShkzi5H7F9r1s9mD3cDj4Ko5f2qhhVoYMibXF7GlLveb/D2ioWay8lxI97Ven3g==",
      "license": "BSD-2-Clause",
      "engines": {
        "node": ">=0.12"
      },
      "funding": {
        "url": "https://github.com/fb55/entities?sponsor=1"
      }
    },
    "node_modules/es-module-lexer": {
      "version": "1.7.0",
      "resolved": "https://registry.npmjs.org/es-module-lexer/-/es-module-lexer-1.7.0.tgz",
      "integrity": "sha512-jEQoCwk8hyb2AZziIOLhDqpm5+2ww5uIE6lkO/6jcOCusfk6LhMHpXXfBLXTZ7Ydyt0j4VoUQv6uGNYbdW+kBA==",
      "license": "MIT"
    },
    "node_modules/esbuild": {
      "version": "0.25.12",
      "resolved": "https://registry.npmjs.org/esbuild/-/esbuild-0.25.12.tgz",
      "integrity": "sha512-bbPBYYrtZbkt6Os6FiTLCTFxvq4tt3JKall1vRwshA3fdVztsLAatFaZobhkBC8/BrPetoa0oksYoKXoG4ryJg==",
      "hasInstallScript": true,
      "license": "MIT",
      "bin": {
        "esbuild": "bin/esbuild"
      },
      "engines": {
        "node": ">=18"
      },
      "optionalDependencies": {
        "@esbuild/aix-ppc64": "0.25.12",
        "@esbuild/android-arm": "0.25.12",
        "@esbuild/android-arm64": "0.25.12",
        "@esbuild/android-x64": "0.25.12",
        "@esbuild/darwin-arm64": "0.25.12",
        "@esbuild/darwin-x64": "0.25.12",
        "@esbuild/freebsd-arm64": "0.25.12",
        "@esbuild/freebsd-x64": "0.25.12",
        "@esbuild/linux-arm": "0.25.12",
        "@esbuild/linux-arm64": "0.25.12",
        "@esbuild/linux-ia32": "0.25.12",
        "@esbuild/linux-loong64": "0.25.12",
        "@esbuild/linux-mips64el": "0.25.12",
        "@esbuild/linux-ppc64": "0.25.12",
        "@esbuild/linux-riscv64": "0.25.12",
        "@esbuild/linux-s390x": "0.25.12",
        "@esbuild/linux-x64": "0.25.12",
        "@esbuild/netbsd-arm64": "0.25.12",
        "@esbuild/netbsd-x64": "0.25.12",
        "@esbuild/openbsd-arm64": "0.25.12",
        "@esbuild/openbsd-x64": "0.25.12",
        "@esbuild/openharmony-arm64": "0.25.12",
        "@esbuild/sunos-x64": "0.25.12",
        "@esbuild/win32-arm64": "0.25.12",
        "@esbuild/win32-ia32": "0.25.12",
        "@esbuild/win32-x64": "0.25.12"
      }
    },
    "node_modules/escape-string-regexp": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-5.0.0.tgz",
      "integrity": "sha512-/veY75JbMK4j1yjvuUxuVsiS/hr/4iHs9FTT6cgTexxdE0Ly/glccBAkloH/DofkjRbZU3bnoj38mOmhkZ0lHw==",
      "license": "MIT",
      "engines": {
        "node": ">=12"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/estree-walker": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/estree-walker/-/estree-walker-3.0.3.tgz",
      "integrity": "sha512-7RUKfXgSMMkzt6ZuXmqapOurLGPPfgj6l9uRZ7lRGolvk0y2yocc35LdcxKC5PQZdn2DMqioAQ2NoWcrTKmm6g==",
      "license": "MIT",
      "dependencies": {
        "@types/estree": "^1.0.0"
      }
    },
    "node_modules/eventemitter3": {
      "version": "5.0.4",
      "resolved": "https://registry.npmjs.org/eventemitter3/-/eventemitter3-5.0.4.tgz",
      "integrity": "sha512-mlsTRyGaPBjPedk6Bvw+aqbsXDtoAyAzm5MO7JgU+yVRyMQ5O8bD4Kcci7BS85f93veegeCPkL8R4GLClnjLFw==",
      "license": "MIT"
    },
    "node_modules/extend": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/extend/-/extend-3.0.2.tgz",
      "integrity": "sha512-fjquC59cD7CyW6urNXK0FBufkZcoiGG80wTuPujX590cB5Ttln20E2UB4S/WARVqhXffZl2LNgS+gQdPIIim/g==",
      "license": "MIT"
    },
    "node_modules/fdir": {
      "version": "6.5.0",
      "resolved": "https://registry.npmjs.org/fdir/-/fdir-6.5.0.tgz",
      "integrity": "sha512-tIbYtZbucOs0BRGqPJkshJUYdL+SDH7dVM8gjy+ERp3WAUjLEFJE+02kanyHtwjWOnwrKYBiwAmM0p4kLJAnXg==",
      "license": "MIT",
      "engines": {
        "node": ">=12.0.0"
      },
      "peerDependencies": {
        "picomatch": "^3 || ^4"
      },
      "peerDependenciesMeta": {
        "picomatch": {
          "optional": true
        }
      }
    },
    "node_modules/flattie": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/flattie/-/flattie-1.1.1.tgz",
      "integrity": "sha512-9UbaD6XdAL97+k/n+N7JwX46K/M6Zc6KcFYskrYL8wbBV/Uyk0CTAMY0VT+qiK5PM7AIc9aTWYtq65U7T+aCNQ==",
      "license": "MIT",
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/fontace": {
      "version": "0.4.0",
      "resolved": "https://registry.npmjs.org/fontace/-/fontace-0.4.0.tgz",
      "integrity": "sha512-moThBCItUe2bjZip5PF/iZClpKHGLwMvR79Kp8XpGRBrvoRSnySN4VcILdv3/MJzbhvUA5WeiUXF5o538m5fvg==",
      "license": "MIT",
      "dependencies": {
        "fontkitten": "^1.0.0"
      }
    },
    "node_modules/fontkitten": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/fontkitten/-/fontkitten-1.0.2.tgz",
      "integrity": "sha512-piJxbLnkD9Xcyi7dWJRnqszEURixe7CrF/efBfbffe2DPyabmuIuqraruY8cXTs19QoM8VJzx47BDRVNXETM7Q==",
      "license": "MIT",
      "dependencies": {
        "tiny-inflate": "^1.0.3"
      },
      "engines": {
        "node": ">=20"
      }
    },
    "node_modules/fsevents": {
      "version": "2.3.3",
      "resolved": "https://registry.npmjs.org/fsevents/-/fsevents-2.3.3.tgz",
      "integrity": "sha512-5xoDfX+fL7faATnagmWPpbFtwh/R77WmMMqqHGS65C3vvB0YHrgF+B1YmZ3441tMj5n63k0212XNoJwzlhffQw==",
      "hasInstallScript": true,
      "license": "MIT",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": "^8.16.0 || ^10.6.0 || >=11.0.0"
      }
    },
    "node_modules/get-east-asian-width": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/get-east-asian-width/-/get-east-asian-width-1.4.0.tgz",
      "integrity": "sha512-QZjmEOC+IT1uk6Rx0sX22V6uHWVwbdbxf1faPqJ1QhLdGgsRGCZoyaQBm/piRdJy/D2um6hM1UP7ZEeQ4EkP+Q==",
      "license": "MIT",
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/github-slugger": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/github-slugger/-/github-slugger-2.0.0.tgz",
      "integrity": "sha512-IaOQ9puYtjrkq7Y0Ygl9KDZnrf/aiUJYUpVf89y8kyaxbRG7Y1SrX/jaumrv81vc61+kiMempujsM3Yw7w5qcw==",
      "license": "ISC"
    },
    "node_modules/graceful-fs": {
      "version": "4.2.11",
      "resolved": "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz",
      "integrity": "sha512-RbJ5/jmFcNNCcDV5o9eTnBLJ/HszWV0P73bc+Ff4nS/rJj+YaS6IGyiOL0VoBYX+l1Wrl3k63h/KrH+nhJ0XvQ==",
      "license": "ISC"
    },
    "node_modules/h3": {
      "version": "1.15.5",
      "resolved": "https://registry.npmjs.org/h3/-/h3-1.15.5.tgz",
      "integrity": "sha512-xEyq3rSl+dhGX2Lm0+eFQIAzlDN6Fs0EcC4f7BNUmzaRX/PTzeuM+Tr2lHB8FoXggsQIeXLj8EDVgs5ywxyxmg==",
      "license": "MIT",
      "dependencies": {
        "cookie-es": "^1.2.2",
        "crossws": "^0.3.5",
        "defu": "^6.1.4",
        "destr": "^2.0.5",
        "iron-webcrypto": "^1.2.1",
        "node-mock-http": "^1.0.4",
        "radix3": "^1.1.2",
        "ufo": "^1.6.3",
        "uncrypto": "^0.1.3"
      }
    },
    "node_modules/hast-util-from-html": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/hast-util-from-html/-/hast-util-from-html-2.0.3.tgz",
      "integrity": "sha512-CUSRHXyKjzHov8yKsQjGOElXy/3EKpyX56ELnkHH34vDVw1N1XSQ1ZcAvTyAPtGqLTuKP/uxM+aLkSPqF/EtMw==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "devlop": "^1.1.0",
        "hast-util-from-parse5": "^8.0.0",
        "parse5": "^7.0.0",
        "vfile": "^6.0.0",
        "vfile-message": "^4.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-from-parse5": {
      "version": "8.0.3",
      "resolved": "https://registry.npmjs.org/hast-util-from-parse5/-/hast-util-from-parse5-8.0.3.tgz",
      "integrity": "sha512-3kxEVkEKt0zvcZ3hCRYI8rqrgwtlIOFMWkbclACvjlDw8Li9S2hk/d51OI0nr/gIpdMHNepwgOKqZ/sy0Clpyg==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "@types/unist": "^3.0.0",
        "devlop": "^1.0.0",
        "hastscript": "^9.0.0",
        "property-information": "^7.0.0",
        "vfile": "^6.0.0",
        "vfile-location": "^5.0.0",
        "web-namespaces": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-is-element": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/hast-util-is-element/-/hast-util-is-element-3.0.0.tgz",
      "integrity": "sha512-Val9mnv2IWpLbNPqc/pUem+a7Ipj2aHacCwgNfTiK0vJKl0LF+4Ba4+v1oPHFpf3bLYmreq0/l3Gud9S5OH42g==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-parse-selector": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/hast-util-parse-selector/-/hast-util-parse-selector-4.0.0.tgz",
      "integrity": "sha512-wkQCkSYoOGCRKERFWcxMVMOcYE2K1AaNLU8DXS9arxnLOUEWbOXKXiJUNzEpqZ3JOKpnha3jkFrumEjVliDe7A==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-raw": {
      "version": "9.1.0",
      "resolved": "https://registry.npmjs.org/hast-util-raw/-/hast-util-raw-9.1.0.tgz",
      "integrity": "sha512-Y8/SBAHkZGoNkpzqqfCldijcuUKh7/su31kEBp67cFY09Wy0mTRgtsLYsiIxMJxlu0f6AA5SUTbDR8K0rxnbUw==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "@types/unist": "^3.0.0",
        "@ungap/structured-clone": "^1.0.0",
        "hast-util-from-parse5": "^8.0.0",
        "hast-util-to-parse5": "^8.0.0",
        "html-void-elements": "^3.0.0",
        "mdast-util-to-hast": "^13.0.0",
        "parse5": "^7.0.0",
        "unist-util-position": "^5.0.0",
        "unist-util-visit": "^5.0.0",
        "vfile": "^6.0.0",
        "web-namespaces": "^2.0.0",
        "zwitch": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-to-html": {
      "version": "9.0.5",
      "resolved": "https://registry.npmjs.org/hast-util-to-html/-/hast-util-to-html-9.0.5.tgz",
      "integrity": "sha512-OguPdidb+fbHQSU4Q4ZiLKnzWo8Wwsf5bZfbvu7//a9oTYoqD/fWpe96NuHkoS9h0ccGOTe0C4NGXdtS0iObOw==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "@types/unist": "^3.0.0",
        "ccount": "^2.0.0",
        "comma-separated-tokens": "^2.0.0",
        "hast-util-whitespace": "^3.0.0",
        "html-void-elements": "^3.0.0",
        "mdast-util-to-hast": "^13.0.0",
        "property-information": "^7.0.0",
        "space-separated-tokens": "^2.0.0",
        "stringify-entities": "^4.0.0",
        "zwitch": "^2.0.4"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-to-parse5": {
      "version": "8.0.1",
      "resolved": "https://registry.npmjs.org/hast-util-to-parse5/-/hast-util-to-parse5-8.0.1.tgz",
      "integrity": "sha512-MlWT6Pjt4CG9lFCjiz4BH7l9wmrMkfkJYCxFwKQic8+RTZgWPuWxwAfjJElsXkex7DJjfSJsQIt931ilUgmwdA==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "comma-separated-tokens": "^2.0.0",
        "devlop": "^1.0.0",
        "property-information": "^7.0.0",
        "space-separated-tokens": "^2.0.0",
        "web-namespaces": "^2.0.0",
        "zwitch": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-to-text": {
      "version": "4.0.2",
      "resolved": "https://registry.npmjs.org/hast-util-to-text/-/hast-util-to-text-4.0.2.tgz",
      "integrity": "sha512-KK6y/BN8lbaq654j7JgBydev7wuNMcID54lkRav1P0CaE1e47P72AWWPiGKXTJU271ooYzcvTAn/Zt0REnvc7A==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "@types/unist": "^3.0.0",
        "hast-util-is-element": "^3.0.0",
        "unist-util-find-after": "^5.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hast-util-whitespace": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/hast-util-whitespace/-/hast-util-whitespace-3.0.0.tgz",
      "integrity": "sha512-88JUN06ipLwsnv+dVn+OIYOvAuvBMy/Qoi6O7mQHxdPXpjy+Cd6xRkWwux7DKO+4sYILtLBRIKgsdpS2gQc7qw==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/hastscript": {
      "version": "9.0.1",
      "resolved": "https://registry.npmjs.org/hastscript/-/hastscript-9.0.1.tgz",
      "integrity": "sha512-g7df9rMFX/SPi34tyGCyUBREQoKkapwdY/T04Qn9TDWfHhAYt4/I0gMVirzK5wEzeUqIjEB+LXC/ypb7Aqno5w==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "comma-separated-tokens": "^2.0.0",
        "hast-util-parse-selector": "^4.0.0",
        "property-information": "^7.0.0",
        "space-separated-tokens": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/html-escaper": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/html-escaper/-/html-escaper-3.0.3.tgz",
      "integrity": "sha512-RuMffC89BOWQoY0WKGpIhn5gX3iI54O6nRA0yC124NYVtzjmFWBIiFd8M0x+ZdX0P9R4lADg1mgP8C7PxGOWuQ==",
      "license": "MIT"
    },
    "node_modules/html-void-elements": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/html-void-elements/-/html-void-elements-3.0.0.tgz",
      "integrity": "sha512-bEqo66MRXsUGxWHV5IP0PUiAWwoEjba4VCzg0LjFJBpchPaTfyfCKTG6bc5F8ucKec3q5y6qOdGyYTSBEvhCrg==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/http-cache-semantics": {
      "version": "4.2.0",
      "resolved": "https://registry.npmjs.org/http-cache-semantics/-/http-cache-semantics-4.2.0.tgz",
      "integrity": "sha512-dTxcvPXqPvXBQpq5dUr6mEMJX4oIEFv6bwom3FDwKRDsuIjjJGANqhBuoAn9c1RQJIdAKav33ED65E2ys+87QQ==",
      "license": "BSD-2-Clause"
    },
    "node_modules/import-meta-resolve": {
      "version": "4.2.0",
      "resolved": "https://registry.npmjs.org/import-meta-resolve/-/import-meta-resolve-4.2.0.tgz",
      "integrity": "sha512-Iqv2fzaTQN28s/FwZAoFq0ZSs/7hMAHJVX+w8PZl3cY19Pxk6jFFalxQoIfW2826i/fDLXv8IiEZRIT0lDuWcg==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/iron-webcrypto": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/iron-webcrypto/-/iron-webcrypto-1.2.1.tgz",
      "integrity": "sha512-feOM6FaSr6rEABp/eDfVseKyTMDt+KGpeB35SkVn9Tyn0CqvVsY3EwI0v5i8nMHyJnzCIQf7nsy3p41TPkJZhg==",
      "license": "MIT",
      "funding": {
        "url": "https://github.com/sponsors/brc-dd"
      }
    },
    "node_modules/is-docker": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/is-docker/-/is-docker-3.0.0.tgz",
      "integrity": "sha512-eljcgEDlEns/7AXFosB5K/2nCM4P7FQPkGc/DWLy5rmFEWvZayGrik1d9/QIY5nJ4f9YsVvBkA6kJpHn9rISdQ==",
      "license": "MIT",
      "bin": {
        "is-docker": "cli.js"
      },
      "engines": {
        "node": "^12.20.0 || ^14.13.1 || >=16.0.0"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/is-fullwidth-code-point": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz",
      "integrity": "sha512-zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==",
      "license": "MIT",
      "engines": {
        "node": ">=8"
      }
    },
    "node_modules/is-inside-container": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/is-inside-container/-/is-inside-container-1.0.0.tgz",
      "integrity": "sha512-KIYLCCJghfHZxqjYBE7rEy0OBuTd5xCHS7tHVgvCLkx7StIoaxwNW3hCALgEUjFfeRk+MG/Qxmp/vtETEF3tRA==",
      "license": "MIT",
      "dependencies": {
        "is-docker": "^3.0.0"
      },
      "bin": {
        "is-inside-container": "cli.js"
      },
      "engines": {
        "node": ">=14.16"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/is-plain-obj": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/is-plain-obj/-/is-plain-obj-4.1.0.tgz",
      "integrity": "sha512-+Pgi+vMuUNkJyExiMBt5IlFoMyKnr5zhJ4Uspz58WOhBF5QoIZkFyNHIbBAtHwzVAgk5RtndVNsDRN61/mmDqg==",
      "license": "MIT",
      "engines": {
        "node": ">=12"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/is-wsl": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/is-wsl/-/is-wsl-3.1.0.tgz",
      "integrity": "sha512-UcVfVfaK4Sc4m7X3dUSoHoozQGBEFeDC+zVo06t98xe8CzHSZZBekNXH+tu0NalHolcJ/QAGqS46Hef7QXBIMw==",
      "license": "MIT",
      "dependencies": {
        "is-inside-container": "^1.0.0"
      },
      "engines": {
        "node": ">=16"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/jiti": {
      "version": "2.6.1",
      "resolved": "https://registry.npmjs.org/jiti/-/jiti-2.6.1.tgz",
      "integrity": "sha512-ekilCSN1jwRvIbgeg/57YFh8qQDNbwDb9xT/qu2DAHbFFZUicIl4ygVaAvzveMhMVr3LnpSKTNnwt8PoOfmKhQ==",
      "license": "MIT",
      "bin": {
        "jiti": "lib/jiti-cli.mjs"
      }
    },
    "node_modules/js-yaml": {
      "version": "4.1.1",
      "resolved": "https://registry.npmjs.org/js-yaml/-/js-yaml-4.1.1.tgz",
      "integrity": "sha512-qQKT4zQxXl8lLwBtHMWwaTcGfFOZviOJet3Oy/xmGk2gZH677CJM9EvtfdSkgWcATZhj/55JZ0rmy3myCT5lsA==",
      "license": "MIT",
      "dependencies": {
        "argparse": "^2.0.1"
      },
      "bin": {
        "js-yaml": "bin/js-yaml.js"
      }
    },
    "node_modules/kleur": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/kleur/-/kleur-3.0.3.tgz",
      "integrity": "sha512-eTIzlVOSUR+JxdDFepEYcBMtZ9Qqdef+rnzWdRZuMbOywu5tO2w2N7rqjoANZ5k9vywhL6Br1VRjUIgTQx4E8w==",
      "license": "MIT",
      "engines": {
        "node": ">=6"
      }
    },
    "node_modules/lightningcss": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss/-/lightningcss-1.30.2.tgz",
      "integrity": "sha512-utfs7Pr5uJyyvDETitgsaqSyjCb2qNRAtuqUeWIAKztsOYdcACf2KtARYXg2pSvhkt+9NfoaNY7fxjl6nuMjIQ==",
      "license": "MPL-2.0",
      "dependencies": {
        "detect-libc": "^2.0.3"
      },
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      },
      "optionalDependencies": {
        "lightningcss-android-arm64": "1.30.2",
        "lightningcss-darwin-arm64": "1.30.2",
        "lightningcss-darwin-x64": "1.30.2",
        "lightningcss-freebsd-x64": "1.30.2",
        "lightningcss-linux-arm-gnueabihf": "1.30.2",
        "lightningcss-linux-arm64-gnu": "1.30.2",
        "lightningcss-linux-arm64-musl": "1.30.2",
        "lightningcss-linux-x64-gnu": "1.30.2",
        "lightningcss-linux-x64-musl": "1.30.2",
        "lightningcss-win32-arm64-msvc": "1.30.2",
        "lightningcss-win32-x64-msvc": "1.30.2"
      }
    },
    "node_modules/lightningcss-android-arm64": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-android-arm64/-/lightningcss-android-arm64-1.30.2.tgz",
      "integrity": "sha512-BH9sEdOCahSgmkVhBLeU7Hc9DWeZ1Eb6wNS6Da8igvUwAe0sqROHddIlvU06q3WyXVEOYDZ6ykBZQnjTbmo4+A==",
      "cpu": [
        "arm64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "android"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-darwin-arm64": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-darwin-arm64/-/lightningcss-darwin-arm64-1.30.2.tgz",
      "integrity": "sha512-ylTcDJBN3Hp21TdhRT5zBOIi73P6/W0qwvlFEk22fkdXchtNTOU4Qc37SkzV+EKYxLouZ6M4LG9NfZ1qkhhBWA==",
      "cpu": [
        "arm64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-darwin-x64": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-darwin-x64/-/lightningcss-darwin-x64-1.30.2.tgz",
      "integrity": "sha512-oBZgKchomuDYxr7ilwLcyms6BCyLn0z8J0+ZZmfpjwg9fRVZIR5/GMXd7r9RH94iDhld3UmSjBM6nXWM2TfZTQ==",
      "cpu": [
        "x64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "darwin"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-freebsd-x64": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-freebsd-x64/-/lightningcss-freebsd-x64-1.30.2.tgz",
      "integrity": "sha512-c2bH6xTrf4BDpK8MoGG4Bd6zAMZDAXS569UxCAGcA7IKbHNMlhGQ89eRmvpIUGfKWNVdbhSbkQaWhEoMGmGslA==",
      "cpu": [
        "x64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "freebsd"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-linux-arm-gnueabihf": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-linux-arm-gnueabihf/-/lightningcss-linux-arm-gnueabihf-1.30.2.tgz",
      "integrity": "sha512-eVdpxh4wYcm0PofJIZVuYuLiqBIakQ9uFZmipf6LF/HRj5Bgm0eb3qL/mr1smyXIS1twwOxNWndd8z0E374hiA==",
      "cpu": [
        "arm"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-linux-arm64-gnu": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-linux-arm64-gnu/-/lightningcss-linux-arm64-gnu-1.30.2.tgz",
      "integrity": "sha512-UK65WJAbwIJbiBFXpxrbTNArtfuznvxAJw4Q2ZGlU8kPeDIWEX1dg3rn2veBVUylA2Ezg89ktszWbaQnxD/e3A==",
      "cpu": [
        "arm64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-linux-arm64-musl": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-linux-arm64-musl/-/lightningcss-linux-arm64-musl-1.30.2.tgz",
      "integrity": "sha512-5Vh9dGeblpTxWHpOx8iauV02popZDsCYMPIgiuw97OJ5uaDsL86cnqSFs5LZkG3ghHoX5isLgWzMs+eD1YzrnA==",
      "cpu": [
        "arm64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-linux-x64-gnu": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-linux-x64-gnu/-/lightningcss-linux-x64-gnu-1.30.2.tgz",
      "integrity": "sha512-Cfd46gdmj1vQ+lR6VRTTadNHu6ALuw2pKR9lYq4FnhvgBc4zWY1EtZcAc6EffShbb1MFrIPfLDXD6Xprbnni4w==",
      "cpu": [
        "x64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-linux-x64-musl": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-linux-x64-musl/-/lightningcss-linux-x64-musl-1.30.2.tgz",
      "integrity": "sha512-XJaLUUFXb6/QG2lGIW6aIk6jKdtjtcffUT0NKvIqhSBY3hh9Ch+1LCeH80dR9q9LBjG3ewbDjnumefsLsP6aiA==",
      "cpu": [
        "x64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "linux"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-win32-arm64-msvc": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-win32-arm64-msvc/-/lightningcss-win32-arm64-msvc-1.30.2.tgz",
      "integrity": "sha512-FZn+vaj7zLv//D/192WFFVA0RgHawIcHqLX9xuWiQt7P0PtdFEVaxgF9rjM/IRYHQXNnk61/H/gb2Ei+kUQ4xQ==",
      "cpu": [
        "arm64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/lightningcss-win32-x64-msvc": {
      "version": "1.30.2",
      "resolved": "https://registry.npmjs.org/lightningcss-win32-x64-msvc/-/lightningcss-win32-x64-msvc-1.30.2.tgz",
      "integrity": "sha512-5g1yc73p+iAkid5phb4oVFMB45417DkRevRbt/El/gKXJk4jid+vPFF/AXbxn05Aky8PapwzZrdJShv5C0avjw==",
      "cpu": [
        "x64"
      ],
      "license": "MPL-2.0",
      "optional": true,
      "os": [
        "win32"
      ],
      "engines": {
        "node": ">= 12.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/parcel"
      }
    },
    "node_modules/longest-streak": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/longest-streak/-/longest-streak-3.1.0.tgz",
      "integrity": "sha512-9Ri+o0JYgehTaVBBDoMqIl8GXtbWg711O3srftcHhZ0dqnETqLaoIK0x17fUw9rFSlK/0NlsKe0Ahhyl5pXE2g==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/lru-cache": {
      "version": "11.2.5",
      "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-11.2.5.tgz",
      "integrity": "sha512-vFrFJkWtJvJnD5hg+hJvVE8Lh/TcMzKnTgCWmtBipwI5yLX/iX+5UB2tfuyODF5E7k9xEzMdYgGqaSb1c0c5Yw==",
      "license": "BlueOak-1.0.0",
      "engines": {
        "node": "20 || >=22"
      }
    },
    "node_modules/magic-string": {
      "version": "0.30.21",
      "resolved": "https://registry.npmjs.org/magic-string/-/magic-string-0.30.21.tgz",
      "integrity": "sha512-vd2F4YUyEXKGcLHoq+TEyCjxueSeHnFxyyjNp80yg0XV4vUhnDer/lvvlqM/arB5bXQN5K2/3oinyCRyx8T2CQ==",
      "license": "MIT",
      "dependencies": {
        "@jridgewell/sourcemap-codec": "^1.5.5"
      }
    },
    "node_modules/magicast": {
      "version": "0.5.1",
      "resolved": "https://registry.npmjs.org/magicast/-/magicast-0.5.1.tgz",
      "integrity": "sha512-xrHS24IxaLrvuo613F719wvOIv9xPHFWQHuvGUBmPnCA/3MQxKI3b+r7n1jAoDHmsbC5bRhTZYR77invLAxVnw==",
      "license": "MIT",
      "dependencies": {
        "@babel/parser": "^7.28.5",
        "@babel/types": "^7.28.5",
        "source-map-js": "^1.2.1"
      }
    },
    "node_modules/markdown-table": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/markdown-table/-/markdown-table-3.0.4.tgz",
      "integrity": "sha512-wiYz4+JrLyb/DqW2hkFJxP7Vd7JuTDm77fvbM8VfEQdmSMqcImWeeRbHwZjBjIFki/VaMK2BhFi7oUUZeM5bqw==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/mdast-util-definitions": {
      "version": "6.0.0",
      "resolved": "https://registry.npmjs.org/mdast-util-definitions/-/mdast-util-definitions-6.0.0.tgz",
      "integrity": "sha512-scTllyX6pnYNZH/AIp/0ePz6s4cZtARxImwoPJ7kS42n+MnVsI4XbnG6d4ibehRIldYMWM2LD7ImQblVhUejVQ==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "@types/unist": "^3.0.0",
        "unist-util-visit": "^5.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-find-and-replace": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/mdast-util-find-and-replace/-/mdast-util-find-and-replace-3.0.2.tgz",
      "integrity": "sha512-Tmd1Vg/m3Xz43afeNxDIhWRtFZgM2VLyaf4vSTYwudTyeuTneoL3qtWMA5jeLyz/O1vDJmmV4QuScFCA2tBPwg==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "escape-string-regexp": "^5.0.0",
        "unist-util-is": "^6.0.0",
        "unist-util-visit-parents": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-from-markdown": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/mdast-util-from-markdown/-/mdast-util-from-markdown-2.0.2.tgz",
      "integrity": "sha512-uZhTV/8NBuw0WHkPTrCqDOl0zVe1BIng5ZtHoDk49ME1qqcjYmmLmOf0gELgcRMxN4w2iuIeVso5/6QymSrgmA==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "@types/unist": "^3.0.0",
        "decode-named-character-reference": "^1.0.0",
        "devlop": "^1.0.0",
        "mdast-util-to-string": "^4.0.0",
        "micromark": "^4.0.0",
        "micromark-util-decode-numeric-character-reference": "^2.0.0",
        "micromark-util-decode-string": "^2.0.0",
        "micromark-util-normalize-identifier": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0",
        "unist-util-stringify-position": "^4.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-gfm": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/mdast-util-gfm/-/mdast-util-gfm-3.1.0.tgz",
      "integrity": "sha512-0ulfdQOM3ysHhCJ1p06l0b0VKlhU0wuQs3thxZQagjcjPrlFRqY215uZGHHJan9GEAXd9MbfPjFJz+qMkVR6zQ==",
      "license": "MIT",
      "dependencies": {
        "mdast-util-from-markdown": "^2.0.0",
        "mdast-util-gfm-autolink-literal": "^2.0.0",
        "mdast-util-gfm-footnote": "^2.0.0",
        "mdast-util-gfm-strikethrough": "^2.0.0",
        "mdast-util-gfm-table": "^2.0.0",
        "mdast-util-gfm-task-list-item": "^2.0.0",
        "mdast-util-to-markdown": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-gfm-autolink-literal": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/mdast-util-gfm-autolink-literal/-/mdast-util-gfm-autolink-literal-2.0.1.tgz",
      "integrity": "sha512-5HVP2MKaP6L+G6YaxPNjuL0BPrq9orG3TsrZ9YXbA3vDw/ACI4MEsnoDpn6ZNm7GnZgtAcONJyPhOP8tNJQavQ==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "ccount": "^2.0.0",
        "devlop": "^1.0.0",
        "mdast-util-find-and-replace": "^3.0.0",
        "micromark-util-character": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-gfm-footnote": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/mdast-util-gfm-footnote/-/mdast-util-gfm-footnote-2.1.0.tgz",
      "integrity": "sha512-sqpDWlsHn7Ac9GNZQMeUzPQSMzR6Wv0WKRNvQRg0KqHh02fpTz69Qc1QSseNX29bhz1ROIyNyxExfawVKTm1GQ==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "devlop": "^1.1.0",
        "mdast-util-from-markdown": "^2.0.0",
        "mdast-util-to-markdown": "^2.0.0",
        "micromark-util-normalize-identifier": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-gfm-strikethrough": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/mdast-util-gfm-strikethrough/-/mdast-util-gfm-strikethrough-2.0.0.tgz",
      "integrity": "sha512-mKKb915TF+OC5ptj5bJ7WFRPdYtuHv0yTRxK2tJvi+BDqbkiG7h7u/9SI89nRAYcmap2xHQL9D+QG/6wSrTtXg==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "mdast-util-from-markdown": "^2.0.0",
        "mdast-util-to-markdown": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-gfm-table": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/mdast-util-gfm-table/-/mdast-util-gfm-table-2.0.0.tgz",
      "integrity": "sha512-78UEvebzz/rJIxLvE7ZtDd/vIQ0RHv+3Mh5DR96p7cS7HsBhYIICDBCu8csTNWNO6tBWfqXPWekRuj2FNOGOZg==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "devlop": "^1.0.0",
        "markdown-table": "^3.0.0",
        "mdast-util-from-markdown": "^2.0.0",
        "mdast-util-to-markdown": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-gfm-task-list-item": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/mdast-util-gfm-task-list-item/-/mdast-util-gfm-task-list-item-2.0.0.tgz",
      "integrity": "sha512-IrtvNvjxC1o06taBAVJznEnkiHxLFTzgonUdy8hzFVeDun0uTjxxrRGVaNFqkU1wJR3RBPEfsxmU6jDWPofrTQ==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "devlop": "^1.0.0",
        "mdast-util-from-markdown": "^2.0.0",
        "mdast-util-to-markdown": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-phrasing": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/mdast-util-phrasing/-/mdast-util-phrasing-4.1.0.tgz",
      "integrity": "sha512-TqICwyvJJpBwvGAMZjj4J2n0X8QWp21b9l0o7eXyVJ25YNWYbJDVIyD1bZXE6WtV6RmKJVYmQAKWa0zWOABz2w==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "unist-util-is": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-to-hast": {
      "version": "13.2.1",
      "resolved": "https://registry.npmjs.org/mdast-util-to-hast/-/mdast-util-to-hast-13.2.1.tgz",
      "integrity": "sha512-cctsq2wp5vTsLIcaymblUriiTcZd0CwWtCbLvrOzYCDZoWyMNV8sZ7krj09FSnsiJi3WVsHLM4k6Dq/yaPyCXA==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "@types/mdast": "^4.0.0",
        "@ungap/structured-clone": "^1.0.0",
        "devlop": "^1.0.0",
        "micromark-util-sanitize-uri": "^2.0.0",
        "trim-lines": "^3.0.0",
        "unist-util-position": "^5.0.0",
        "unist-util-visit": "^5.0.0",
        "vfile": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-to-markdown": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/mdast-util-to-markdown/-/mdast-util-to-markdown-2.1.2.tgz",
      "integrity": "sha512-xj68wMTvGXVOKonmog6LwyJKrYXZPvlwabaryTjLh9LuvovB/KAH+kvi8Gjj+7rJjsFi23nkUxRQv1KqSroMqA==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "@types/unist": "^3.0.0",
        "longest-streak": "^3.0.0",
        "mdast-util-phrasing": "^4.0.0",
        "mdast-util-to-string": "^4.0.0",
        "micromark-util-classify-character": "^2.0.0",
        "micromark-util-decode-string": "^2.0.0",
        "unist-util-visit": "^5.0.0",
        "zwitch": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdast-util-to-string": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/mdast-util-to-string/-/mdast-util-to-string-4.0.0.tgz",
      "integrity": "sha512-0H44vDimn51F0YwvxSJSm0eCDOJTRlmN0R1yBh4HLj9wiV1Dn0QoXGbvFAWj2hSItVTlCmBF1hqKlIyUBVFLPg==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/mdn-data": {
      "version": "2.12.2",
      "resolved": "https://registry.npmjs.org/mdn-data/-/mdn-data-2.12.2.tgz",
      "integrity": "sha512-IEn+pegP1aManZuckezWCO+XZQDplx1366JoVhTpMpBB1sPey/SbveZQUosKiKiGYjg1wH4pMlNgXbCiYgihQA==",
      "license": "CC0-1.0"
    },
    "node_modules/micromark": {
      "version": "4.0.2",
      "resolved": "https://registry.npmjs.org/micromark/-/micromark-4.0.2.tgz",
      "integrity": "sha512-zpe98Q6kvavpCr1NPVSCMebCKfD7CA2NqZ+rykeNhONIJBpc1tFKt9hucLGwha3jNTNI8lHpctWJWoimVF4PfA==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "@types/debug": "^4.0.0",
        "debug": "^4.0.0",
        "decode-named-character-reference": "^1.0.0",
        "devlop": "^1.0.0",
        "micromark-core-commonmark": "^2.0.0",
        "micromark-factory-space": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-chunked": "^2.0.0",
        "micromark-util-combine-extensions": "^2.0.0",
        "micromark-util-decode-numeric-character-reference": "^2.0.0",
        "micromark-util-encode": "^2.0.0",
        "micromark-util-normalize-identifier": "^2.0.0",
        "micromark-util-resolve-all": "^2.0.0",
        "micromark-util-sanitize-uri": "^2.0.0",
        "micromark-util-subtokenize": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-core-commonmark": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/micromark-core-commonmark/-/micromark-core-commonmark-2.0.3.tgz",
      "integrity": "sha512-RDBrHEMSxVFLg6xvnXmb1Ayr2WzLAWjeSATAoxwKYJV94TeNavgoIdA0a9ytzDSVzBy2YKFK+emCPOEibLeCrg==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "decode-named-character-reference": "^1.0.0",
        "devlop": "^1.0.0",
        "micromark-factory-destination": "^2.0.0",
        "micromark-factory-label": "^2.0.0",
        "micromark-factory-space": "^2.0.0",
        "micromark-factory-title": "^2.0.0",
        "micromark-factory-whitespace": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-chunked": "^2.0.0",
        "micromark-util-classify-character": "^2.0.0",
        "micromark-util-html-tag-name": "^2.0.0",
        "micromark-util-normalize-identifier": "^2.0.0",
        "micromark-util-resolve-all": "^2.0.0",
        "micromark-util-subtokenize": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-extension-gfm": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm/-/micromark-extension-gfm-3.0.0.tgz",
      "integrity": "sha512-vsKArQsicm7t0z2GugkCKtZehqUm31oeGBV/KVSorWSy8ZlNAv7ytjFhvaryUiCUJYqs+NoE6AFhpQvBTM6Q4w==",
      "license": "MIT",
      "dependencies": {
        "micromark-extension-gfm-autolink-literal": "^2.0.0",
        "micromark-extension-gfm-footnote": "^2.0.0",
        "micromark-extension-gfm-strikethrough": "^2.0.0",
        "micromark-extension-gfm-table": "^2.0.0",
        "micromark-extension-gfm-tagfilter": "^2.0.0",
        "micromark-extension-gfm-task-list-item": "^2.0.0",
        "micromark-util-combine-extensions": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-extension-gfm-autolink-literal": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm-autolink-literal/-/micromark-extension-gfm-autolink-literal-2.1.0.tgz",
      "integrity": "sha512-oOg7knzhicgQ3t4QCjCWgTmfNhvQbDDnJeVu9v81r7NltNCVmhPy1fJRX27pISafdjL+SVc4d3l48Gb6pbRypw==",
      "license": "MIT",
      "dependencies": {
        "micromark-util-character": "^2.0.0",
        "micromark-util-sanitize-uri": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-extension-gfm-footnote": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm-footnote/-/micromark-extension-gfm-footnote-2.1.0.tgz",
      "integrity": "sha512-/yPhxI1ntnDNsiHtzLKYnE3vf9JZ6cAisqVDauhp4CEHxlb4uoOTxOCJ+9s51bIB8U1N1FJ1RXOKTIlD5B/gqw==",
      "license": "MIT",
      "dependencies": {
        "devlop": "^1.0.0",
        "micromark-core-commonmark": "^2.0.0",
        "micromark-factory-space": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-normalize-identifier": "^2.0.0",
        "micromark-util-sanitize-uri": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-extension-gfm-strikethrough": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm-strikethrough/-/micromark-extension-gfm-strikethrough-2.1.0.tgz",
      "integrity": "sha512-ADVjpOOkjz1hhkZLlBiYA9cR2Anf8F4HqZUO6e5eDcPQd0Txw5fxLzzxnEkSkfnD0wziSGiv7sYhk/ktvbf1uw==",
      "license": "MIT",
      "dependencies": {
        "devlop": "^1.0.0",
        "micromark-util-chunked": "^2.0.0",
        "micromark-util-classify-character": "^2.0.0",
        "micromark-util-resolve-all": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-extension-gfm-table": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm-table/-/micromark-extension-gfm-table-2.1.1.tgz",
      "integrity": "sha512-t2OU/dXXioARrC6yWfJ4hqB7rct14e8f7m0cbI5hUmDyyIlwv5vEtooptH8INkbLzOatzKuVbQmAYcbWoyz6Dg==",
      "license": "MIT",
      "dependencies": {
        "devlop": "^1.0.0",
        "micromark-factory-space": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-extension-gfm-tagfilter": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm-tagfilter/-/micromark-extension-gfm-tagfilter-2.0.0.tgz",
      "integrity": "sha512-xHlTOmuCSotIA8TW1mDIM6X2O1SiX5P9IuDtqGonFhEK0qgRI4yeC6vMxEV2dgyr2TiD+2PQ10o+cOhdVAcwfg==",
      "license": "MIT",
      "dependencies": {
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-extension-gfm-task-list-item": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/micromark-extension-gfm-task-list-item/-/micromark-extension-gfm-task-list-item-2.1.0.tgz",
      "integrity": "sha512-qIBZhqxqI6fjLDYFTBIa4eivDMnP+OZqsNwmQ3xNLE4Cxwc+zfQEfbs6tzAo2Hjq+bh6q5F+Z8/cksrLFYWQQw==",
      "license": "MIT",
      "dependencies": {
        "devlop": "^1.0.0",
        "micromark-factory-space": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/micromark-factory-destination": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-factory-destination/-/micromark-factory-destination-2.0.1.tgz",
      "integrity": "sha512-Xe6rDdJlkmbFRExpTOmRj9N3MaWmbAgdpSrBQvCFqhezUn4AHqJHbaEnfbVYYiexVSs//tqOdY/DxhjdCiJnIA==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-factory-label": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-factory-label/-/micromark-factory-label-2.0.1.tgz",
      "integrity": "sha512-VFMekyQExqIW7xIChcXn4ok29YE3rnuyveW3wZQWWqF4Nv9Wk5rgJ99KzPvHjkmPXF93FXIbBp6YdW3t71/7Vg==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "devlop": "^1.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-factory-space": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-factory-space/-/micromark-factory-space-2.0.1.tgz",
      "integrity": "sha512-zRkxjtBxxLd2Sc0d+fbnEunsTj46SWXgXciZmHq0kDYGnck/ZSGj9/wULTV95uoeYiK5hRXP2mJ98Uo4cq/LQg==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-character": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-factory-title": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-factory-title/-/micromark-factory-title-2.0.1.tgz",
      "integrity": "sha512-5bZ+3CjhAd9eChYTHsjy6TGxpOFSKgKKJPJxr293jTbfry2KDoWkhBb6TcPVB4NmzaPhMs1Frm9AZH7OD4Cjzw==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-factory-space": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-factory-whitespace": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-factory-whitespace/-/micromark-factory-whitespace-2.0.1.tgz",
      "integrity": "sha512-Ob0nuZ3PKt/n0hORHyvoD9uZhr+Za8sFoP+OnMcnWK5lngSzALgQYKMr9RJVOWLqQYuyn6ulqGWSXdwf6F80lQ==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-factory-space": "^2.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-util-character": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/micromark-util-character/-/micromark-util-character-2.1.1.tgz",
      "integrity": "sha512-wv8tdUTJ3thSFFFJKtpYKOYiGP2+v96Hvk4Tu8KpCAsTMs6yi+nVmGh1syvSCsaxz45J6Jbw+9DD6g97+NV67Q==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-util-chunked": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-chunked/-/micromark-util-chunked-2.0.1.tgz",
      "integrity": "sha512-QUNFEOPELfmvv+4xiNg2sRYeS/P84pTW0TCgP5zc9FpXetHY0ab7SxKyAQCNCc1eK0459uoLI1y5oO5Vc1dbhA==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-symbol": "^2.0.0"
      }
    },
    "node_modules/micromark-util-classify-character": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-classify-character/-/micromark-util-classify-character-2.0.1.tgz",
      "integrity": "sha512-K0kHzM6afW/MbeWYWLjoHQv1sgg2Q9EccHEDzSkxiP/EaagNzCm7T/WMKZ3rjMbvIpvBiZgwR3dKMygtA4mG1Q==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-character": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-util-combine-extensions": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-combine-extensions/-/micromark-util-combine-extensions-2.0.1.tgz",
      "integrity": "sha512-OnAnH8Ujmy59JcyZw8JSbK9cGpdVY44NKgSM7E9Eh7DiLS2E9RNQf0dONaGDzEG9yjEl5hcqeIsj4hfRkLH/Bg==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-chunked": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-util-decode-numeric-character-reference": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/micromark-util-decode-numeric-character-reference/-/micromark-util-decode-numeric-character-reference-2.0.2.tgz",
      "integrity": "sha512-ccUbYk6CwVdkmCQMyr64dXz42EfHGkPQlBj5p7YVGzq8I7CtjXZJrubAYezf7Rp+bjPseiROqe7G6foFd+lEuw==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-symbol": "^2.0.0"
      }
    },
    "node_modules/micromark-util-decode-string": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-decode-string/-/micromark-util-decode-string-2.0.1.tgz",
      "integrity": "sha512-nDV/77Fj6eH1ynwscYTOsbK7rR//Uj0bZXBwJZRfaLEJ1iGBR6kIfNmlNqaqJf649EP0F3NWNdeJi03elllNUQ==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "decode-named-character-reference": "^1.0.0",
        "micromark-util-character": "^2.0.0",
        "micromark-util-decode-numeric-character-reference": "^2.0.0",
        "micromark-util-symbol": "^2.0.0"
      }
    },
    "node_modules/micromark-util-encode": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-encode/-/micromark-util-encode-2.0.1.tgz",
      "integrity": "sha512-c3cVx2y4KqUnwopcO9b/SCdo2O67LwJJ/UyqGfbigahfegL9myoEFoDYZgkT7f36T0bLrM9hZTAaAyH+PCAXjw==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT"
    },
    "node_modules/micromark-util-html-tag-name": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-html-tag-name/-/micromark-util-html-tag-name-2.0.1.tgz",
      "integrity": "sha512-2cNEiYDhCWKI+Gs9T0Tiysk136SnR13hhO8yW6BGNyhOC4qYFnwF1nKfD3HFAIXA5c45RrIG1ub11GiXeYd1xA==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT"
    },
    "node_modules/micromark-util-normalize-identifier": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-normalize-identifier/-/micromark-util-normalize-identifier-2.0.1.tgz",
      "integrity": "sha512-sxPqmo70LyARJs0w2UclACPUUEqltCkJ6PhKdMIDuJ3gSf/Q+/GIe3WKl0Ijb/GyH9lOpUkRAO2wp0GVkLvS9Q==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-symbol": "^2.0.0"
      }
    },
    "node_modules/micromark-util-resolve-all": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-resolve-all/-/micromark-util-resolve-all-2.0.1.tgz",
      "integrity": "sha512-VdQyxFWFT2/FGJgwQnJYbe1jjQoNTS4RjglmSjTUlpUMa95Htx9NHeYW4rGDJzbjvCsl9eLjMQwGeElsqmzcHg==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-util-sanitize-uri": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-sanitize-uri/-/micromark-util-sanitize-uri-2.0.1.tgz",
      "integrity": "sha512-9N9IomZ/YuGGZZmQec1MbgxtlgougxTodVwDzzEouPKo3qFWvymFHWcnDi2vzV1ff6kas9ucW+o3yzJK9YB1AQ==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "micromark-util-character": "^2.0.0",
        "micromark-util-encode": "^2.0.0",
        "micromark-util-symbol": "^2.0.0"
      }
    },
    "node_modules/micromark-util-subtokenize": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/micromark-util-subtokenize/-/micromark-util-subtokenize-2.1.0.tgz",
      "integrity": "sha512-XQLu552iSctvnEcgXw6+Sx75GflAPNED1qx7eBJ+wydBb2KCbRZe+NwvIEEMM83uml1+2WSXpBAcp9IUCgCYWA==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "devlop": "^1.0.0",
        "micromark-util-chunked": "^2.0.0",
        "micromark-util-symbol": "^2.0.0",
        "micromark-util-types": "^2.0.0"
      }
    },
    "node_modules/micromark-util-symbol": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/micromark-util-symbol/-/micromark-util-symbol-2.0.1.tgz",
      "integrity": "sha512-vs5t8Apaud9N28kgCrRUdEed4UJ+wWNvicHLPxCa9ENlYuAY31M0ETy5y1vA33YoNPDFTghEbnh6efaE8h4x0Q==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT"
    },
    "node_modules/micromark-util-types": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/micromark-util-types/-/micromark-util-types-2.0.2.tgz",
      "integrity": "sha512-Yw0ECSpJoViF1qTU4DC6NwtC4aWGt1EkzaQB8KPPyCRR8z9TWeV0HbEFGTO+ZY1wB22zmxnJqhPyTpOVCpeHTA==",
      "funding": [
        {
          "type": "GitHub Sponsors",
          "url": "https://github.com/sponsors/unifiedjs"
        },
        {
          "type": "OpenCollective",
          "url": "https://opencollective.com/unified"
        }
      ],
      "license": "MIT"
    },
    "node_modules/mrmime": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/mrmime/-/mrmime-2.0.1.tgz",
      "integrity": "sha512-Y3wQdFg2Va6etvQ5I82yUhGdsKrcYox6p7FfL1LbK2J4V01F9TGlepTIhnK24t7koZibmg82KGglhA1XK5IsLQ==",
      "license": "MIT",
      "engines": {
        "node": ">=10"
      }
    },
    "node_modules/ms": {
      "version": "2.1.3",
      "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz",
      "integrity": "sha512-6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA==",
      "license": "MIT"
    },
    "node_modules/nanoid": {
      "version": "3.3.11",
      "resolved": "https://registry.npmjs.org/nanoid/-/nanoid-3.3.11.tgz",
      "integrity": "sha512-N8SpfPUnUp1bK+PMYW8qSWdl9U+wwNWI4QKxOYDy9JAro3WMX7p2OeVRF9v+347pnakNevPmiHhNmZ2HbFA76w==",
      "funding": [
        {
          "type": "github",
          "url": "https://github.com/sponsors/ai"
        }
      ],
      "license": "MIT",
      "bin": {
        "nanoid": "bin/nanoid.cjs"
      },
      "engines": {
        "node": "^10 || ^12 || ^13.7 || ^14 || >=15.0.1"
      }
    },
    "node_modules/neotraverse": {
      "version": "0.6.18",
      "resolved": "https://registry.npmjs.org/neotraverse/-/neotraverse-0.6.18.tgz",
      "integrity": "sha512-Z4SmBUweYa09+o6pG+eASabEpP6QkQ70yHj351pQoEXIs8uHbaU2DWVmzBANKgflPa47A50PtB2+NgRpQvr7vA==",
      "license": "MIT",
      "engines": {
        "node": ">= 10"
      }
    },
    "node_modules/nlcst-to-string": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/nlcst-to-string/-/nlcst-to-string-4.0.0.tgz",
      "integrity": "sha512-YKLBCcUYKAg0FNlOBT6aI91qFmSiFKiluk655WzPF+DDMA02qIyy8uiRqI8QXtcFpEvll12LpL5MXqEmAZ+dcA==",
      "license": "MIT",
      "dependencies": {
        "@types/nlcst": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/node-fetch-native": {
      "version": "1.6.7",
      "resolved": "https://registry.npmjs.org/node-fetch-native/-/node-fetch-native-1.6.7.tgz",
      "integrity": "sha512-g9yhqoedzIUm0nTnTqAQvueMPVOuIY16bqgAJJC8XOOubYFNwz6IER9qs0Gq2Xd0+CecCKFjtdDTMA4u4xG06Q==",
      "license": "MIT"
    },
    "node_modules/node-mock-http": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/node-mock-http/-/node-mock-http-1.0.4.tgz",
      "integrity": "sha512-8DY+kFsDkNXy1sJglUfuODx1/opAGJGyrTuFqEoN90oRc2Vk0ZbD4K2qmKXBBEhZQzdKHIVfEJpDU8Ak2NJEvQ==",
      "license": "MIT"
    },
    "node_modules/normalize-path": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz",
      "integrity": "sha512-6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==",
      "license": "MIT",
      "engines": {
        "node": ">=0.10.0"
      }
    },
    "node_modules/nth-check": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/nth-check/-/nth-check-2.1.1.tgz",
      "integrity": "sha512-lqjrjmaOoAnWfMmBPL+XNnynZh2+swxiX3WUE0s4yEHI6m+AwrK2UZOimIRl3X/4QctVqS8AiZjFqyOGrMXb/w==",
      "license": "BSD-2-Clause",
      "dependencies": {
        "boolbase": "^1.0.0"
      },
      "funding": {
        "url": "https://github.com/fb55/nth-check?sponsor=1"
      }
    },
    "node_modules/ofetch": {
      "version": "1.5.1",
      "resolved": "https://registry.npmjs.org/ofetch/-/ofetch-1.5.1.tgz",
      "integrity": "sha512-2W4oUZlVaqAPAil6FUg/difl6YhqhUR7x2eZY4bQCko22UXg3hptq9KLQdqFClV+Wu85UX7hNtdGTngi/1BxcA==",
      "license": "MIT",
      "dependencies": {
        "destr": "^2.0.5",
        "node-fetch-native": "^1.6.7",
        "ufo": "^1.6.1"
      }
    },
    "node_modules/ohash": {
      "version": "2.0.11",
      "resolved": "https://registry.npmjs.org/ohash/-/ohash-2.0.11.tgz",
      "integrity": "sha512-RdR9FQrFwNBNXAr4GixM8YaRZRJ5PUWbKYbE5eOsrwAjJW0q2REGcf79oYPsLyskQCZG1PLN+S/K1V00joZAoQ==",
      "license": "MIT"
    },
    "node_modules/oniguruma-parser": {
      "version": "0.12.1",
      "resolved": "https://registry.npmjs.org/oniguruma-parser/-/oniguruma-parser-0.12.1.tgz",
      "integrity": "sha512-8Unqkvk1RYc6yq2WBYRj4hdnsAxVze8i7iPfQr8e4uSP3tRv0rpZcbGUDvxfQQcdwHt/e9PrMvGCsa8OqG9X3w==",
      "license": "MIT"
    },
    "node_modules/oniguruma-to-es": {
      "version": "4.3.4",
      "resolved": "https://registry.npmjs.org/oniguruma-to-es/-/oniguruma-to-es-4.3.4.tgz",
      "integrity": "sha512-3VhUGN3w2eYxnTzHn+ikMI+fp/96KoRSVK9/kMTcFqj1NRDh2IhQCKvYxDnWePKRXY/AqH+Fuiyb7VHSzBjHfA==",
      "license": "MIT",
      "dependencies": {
        "oniguruma-parser": "^0.12.1",
        "regex": "^6.0.1",
        "regex-recursion": "^6.0.2"
      }
    },
    "node_modules/p-limit": {
      "version": "6.2.0",
      "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-6.2.0.tgz",
      "integrity": "sha512-kuUqqHNUqoIWp/c467RI4X6mmyuojY5jGutNU0wVTmEOOfcuwLqyMVoAi9MKi2Ak+5i9+nhmrK4ufZE8069kHA==",
      "license": "MIT",
      "dependencies": {
        "yocto-queue": "^1.1.1"
      },
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/p-queue": {
      "version": "8.1.1",
      "resolved": "https://registry.npmjs.org/p-queue/-/p-queue-8.1.1.tgz",
      "integrity": "sha512-aNZ+VfjobsWryoiPnEApGGmf5WmNsCo9xu8dfaYamG5qaLP7ClhLN6NgsFe6SwJ2UbLEBK5dv9x8Mn5+RVhMWQ==",
      "license": "MIT",
      "dependencies": {
        "eventemitter3": "^5.0.1",
        "p-timeout": "^6.1.2"
      },
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/p-timeout": {
      "version": "6.1.4",
      "resolved": "https://registry.npmjs.org/p-timeout/-/p-timeout-6.1.4.tgz",
      "integrity": "sha512-MyIV3ZA/PmyBN/ud8vV9XzwTrNtR4jFrObymZYnZqMmW0zA8Z17vnT0rBgFE/TlohB+YCHqXMgZzb3Csp49vqg==",
      "license": "MIT",
      "engines": {
        "node": ">=14.16"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/package-manager-detector": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/package-manager-detector/-/package-manager-detector-1.6.0.tgz",
      "integrity": "sha512-61A5ThoTiDG/C8s8UMZwSorAGwMJ0ERVGj2OjoW5pAalsNOg15+iQiPzrLJ4jhZ1HJzmC2PIHT2oEiH3R5fzNA==",
      "license": "MIT"
    },
    "node_modules/parse-latin": {
      "version": "7.0.0",
      "resolved": "https://registry.npmjs.org/parse-latin/-/parse-latin-7.0.0.tgz",
      "integrity": "sha512-mhHgobPPua5kZ98EF4HWiH167JWBfl4pvAIXXdbaVohtK7a6YBOy56kvhCqduqyo/f3yrHFWmqmiMg/BkBkYYQ==",
      "license": "MIT",
      "dependencies": {
        "@types/nlcst": "^2.0.0",
        "@types/unist": "^3.0.0",
        "nlcst-to-string": "^4.0.0",
        "unist-util-modify-children": "^4.0.0",
        "unist-util-visit-children": "^3.0.0",
        "vfile": "^6.0.0"
      },
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/parse5": {
      "version": "7.3.0",
      "resolved": "https://registry.npmjs.org/parse5/-/parse5-7.3.0.tgz",
      "integrity": "sha512-IInvU7fabl34qmi9gY8XOVxhYyMyuH2xUNpb2q8/Y+7552KlejkRvqvD19nMoUW/uQGGbqNpA6Tufu5FL5BZgw==",
      "license": "MIT",
      "dependencies": {
        "entities": "^6.0.0"
      },
      "funding": {
        "url": "https://github.com/inikulin/parse5?sponsor=1"
      }
    },
    "node_modules/piccolore": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/piccolore/-/piccolore-0.1.3.tgz",
      "integrity": "sha512-o8bTeDWjE086iwKrROaDf31K0qC/BENdm15/uH9usSC/uZjJOKb2YGiVHfLY4GhwsERiPI1jmwI2XrA7ACOxVw==",
      "license": "ISC"
    },
    "node_modules/picocolors": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/picocolors/-/picocolors-1.1.1.tgz",
      "integrity": "sha512-xceH2snhtb5M9liqDsmEw56le376mTZkEX/jEb/RxNFyegNul7eNslCXP9FDj/Lcu0X8KEyMceP2ntpaHrDEVA==",
      "license": "ISC"
    },
    "node_modules/picomatch": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/picomatch/-/picomatch-4.0.3.tgz",
      "integrity": "sha512-5gTmgEY/sqK6gFXLIsQNH19lWb4ebPDLA4SdLP7dsWkIXHWlG66oPuVvXSGFPppYZz8ZDZq0dYYrbHfBCVUb1Q==",
      "license": "MIT",
      "engines": {
        "node": ">=12"
      },
      "funding": {
        "url": "https://github.com/sponsors/jonschlinkert"
      }
    },
    "node_modules/postcss": {
      "version": "8.5.6",
      "resolved": "https://registry.npmjs.org/postcss/-/postcss-8.5.6.tgz",
      "integrity": "sha512-3Ybi1tAuwAP9s0r1UQ2J4n5Y0G05bJkpUIO0/bI9MhwmD70S5aTWbXGBwxHrelT+XM1k6dM0pk+SwNkpTRN7Pg==",
      "funding": [
        {
          "type": "opencollective",
          "url": "https://opencollective.com/postcss/"
        },
        {
          "type": "tidelift",
          "url": "https://tidelift.com/funding/github/npm/postcss"
        },
        {
          "type": "github",
          "url": "https://github.com/sponsors/ai"
        }
      ],
      "license": "MIT",
      "dependencies": {
        "nanoid": "^3.3.11",
        "picocolors": "^1.1.1",
        "source-map-js": "^1.2.1"
      },
      "engines": {
        "node": "^10 || ^12 || >=14"
      }
    },
    "node_modules/prismjs": {
      "version": "1.30.0",
      "resolved": "https://registry.npmjs.org/prismjs/-/prismjs-1.30.0.tgz",
      "integrity": "sha512-DEvV2ZF2r2/63V+tK8hQvrR2ZGn10srHbXviTlcv7Kpzw8jWiNTqbVgjO3IY8RxrrOUF8VPMQQFysYYYv0YZxw==",
      "license": "MIT",
      "engines": {
        "node": ">=6"
      }
    },
    "node_modules/prompts": {
      "version": "2.4.2",
      "resolved": "https://registry.npmjs.org/prompts/-/prompts-2.4.2.tgz",
      "integrity": "sha512-NxNv/kLguCA7p3jE8oL2aEBsrJWgAakBpgmgK6lpPWV+WuOmY6r2/zbAVnP+T8bQlA0nzHXSJSJW0Hq7ylaD2Q==",
      "license": "MIT",
      "dependencies": {
        "kleur": "^3.0.3",
        "sisteransi": "^1.0.5"
      },
      "engines": {
        "node": ">= 6"
      }
    },
    "node_modules/property-information": {
      "version": "7.1.0",
      "resolved": "https://registry.npmjs.org/property-information/-/property-information-7.1.0.tgz",
      "integrity": "sha512-TwEZ+X+yCJmYfL7TPUOcvBZ4QfoT5YenQiJuX//0th53DE6w0xxLEtfK3iyryQFddXuvkIk51EEgrJQ0WJkOmQ==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/radix3": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/radix3/-/radix3-1.1.2.tgz",
      "integrity": "sha512-b484I/7b8rDEdSDKckSSBA8knMpcdsXudlE/LNL639wFoHKwLbEkQFZHWEYwDC0wa0FKUcCY+GAF73Z7wxNVFA==",
      "license": "MIT"
    },
    "node_modules/readdirp": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/readdirp/-/readdirp-5.0.0.tgz",
      "integrity": "sha512-9u/XQ1pvrQtYyMpZe7DXKv2p5CNvyVwzUB6uhLAnQwHMSgKMBR62lc7AHljaeteeHXn11XTAaLLUVZYVZyuRBQ==",
      "license": "MIT",
      "engines": {
        "node": ">= 20.19.0"
      },
      "funding": {
        "type": "individual",
        "url": "https://paulmillr.com/funding/"
      }
    },
    "node_modules/regex": {
      "version": "6.1.0",
      "resolved": "https://registry.npmjs.org/regex/-/regex-6.1.0.tgz",
      "integrity": "sha512-6VwtthbV4o/7+OaAF9I5L5V3llLEsoPyq9P1JVXkedTP33c7MfCG0/5NOPcSJn0TzXcG9YUrR0gQSWioew3LDg==",
      "license": "MIT",
      "dependencies": {
        "regex-utilities": "^2.3.0"
      }
    },
    "node_modules/regex-recursion": {
      "version": "6.0.2",
      "resolved": "https://registry.npmjs.org/regex-recursion/-/regex-recursion-6.0.2.tgz",
      "integrity": "sha512-0YCaSCq2VRIebiaUviZNs0cBz1kg5kVS2UKUfNIx8YVs1cN3AV7NTctO5FOKBA+UT2BPJIWZauYHPqJODG50cg==",
      "license": "MIT",
      "dependencies": {
        "regex-utilities": "^2.3.0"
      }
    },
    "node_modules/regex-utilities": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/regex-utilities/-/regex-utilities-2.3.0.tgz",
      "integrity": "sha512-8VhliFJAWRaUiVvREIiW2NXXTmHs4vMNnSzuJVhscgmGav3g9VDxLrQndI3dZZVVdp0ZO/5v0xmX516/7M9cng==",
      "license": "MIT"
    },
    "node_modules/rehype": {
      "version": "13.0.2",
      "resolved": "https://registry.npmjs.org/rehype/-/rehype-13.0.2.tgz",
      "integrity": "sha512-j31mdaRFrwFRUIlxGeuPXXKWQxet52RBQRvCmzl5eCefn/KGbomK5GMHNMsOJf55fgo3qw5tST5neDuarDYR2A==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "rehype-parse": "^9.0.0",
        "rehype-stringify": "^10.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/rehype-parse": {
      "version": "9.0.1",
      "resolved": "https://registry.npmjs.org/rehype-parse/-/rehype-parse-9.0.1.tgz",
      "integrity": "sha512-ksCzCD0Fgfh7trPDxr2rSylbwq9iYDkSn8TCDmEJ49ljEUBxDVCzCHv7QNzZOfODanX4+bWQ4WZqLCRWYLfhag==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "hast-util-from-html": "^2.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/rehype-raw": {
      "version": "7.0.0",
      "resolved": "https://registry.npmjs.org/rehype-raw/-/rehype-raw-7.0.0.tgz",
      "integrity": "sha512-/aE8hCfKlQeA8LmyeyQvQF3eBiLRGNlfBJEvWH7ivp9sBqs7TNqBL5X3v157rM4IFETqDnIOO+z5M/biZbo9Ww==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "hast-util-raw": "^9.0.0",
        "vfile": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/rehype-stringify": {
      "version": "10.0.1",
      "resolved": "https://registry.npmjs.org/rehype-stringify/-/rehype-stringify-10.0.1.tgz",
      "integrity": "sha512-k9ecfXHmIPuFVI61B9DeLPN0qFHfawM6RsuX48hoqlaKSF61RskNjSm1lI8PhBEM0MRdLxVVm4WmTqJQccH9mA==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "hast-util-to-html": "^9.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/remark-gfm": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/remark-gfm/-/remark-gfm-4.0.1.tgz",
      "integrity": "sha512-1quofZ2RQ9EWdeN34S79+KExV1764+wCUGop5CPL1WGdD0ocPpu91lzPGbwWMECpEpd42kJGQwzRfyov9j4yNg==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "mdast-util-gfm": "^3.0.0",
        "micromark-extension-gfm": "^3.0.0",
        "remark-parse": "^11.0.0",
        "remark-stringify": "^11.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/remark-parse": {
      "version": "11.0.0",
      "resolved": "https://registry.npmjs.org/remark-parse/-/remark-parse-11.0.0.tgz",
      "integrity": "sha512-FCxlKLNGknS5ba/1lmpYijMUzX2esxW5xQqjWxw2eHFfS2MSdaHVINFmhjo+qN1WhZhNimq0dZATN9pH0IDrpA==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "mdast-util-from-markdown": "^2.0.0",
        "micromark-util-types": "^2.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/remark-rehype": {
      "version": "11.1.2",
      "resolved": "https://registry.npmjs.org/remark-rehype/-/remark-rehype-11.1.2.tgz",
      "integrity": "sha512-Dh7l57ianaEoIpzbp0PC9UKAdCSVklD8E5Rpw7ETfbTl3FqcOOgq5q2LVDhgGCkaBv7p24JXikPdvhhmHvKMsw==",
      "license": "MIT",
      "dependencies": {
        "@types/hast": "^3.0.0",
        "@types/mdast": "^4.0.0",
        "mdast-util-to-hast": "^13.0.0",
        "unified": "^11.0.0",
        "vfile": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/remark-smartypants": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/remark-smartypants/-/remark-smartypants-3.0.2.tgz",
      "integrity": "sha512-ILTWeOriIluwEvPjv67v7Blgrcx+LZOkAUVtKI3putuhlZm84FnqDORNXPPm+HY3NdZOMhyDwZ1E+eZB/Df5dA==",
      "license": "MIT",
      "dependencies": {
        "retext": "^9.0.0",
        "retext-smartypants": "^6.0.0",
        "unified": "^11.0.4",
        "unist-util-visit": "^5.0.0"
      },
      "engines": {
        "node": ">=16.0.0"
      }
    },
    "node_modules/remark-stringify": {
      "version": "11.0.0",
      "resolved": "https://registry.npmjs.org/remark-stringify/-/remark-stringify-11.0.0.tgz",
      "integrity": "sha512-1OSmLd3awB/t8qdoEOMazZkNsfVTeY4fTsgzcQFdXNq8ToTN4ZGwrMnlda4K6smTFKD+GRV6O48i6Z4iKgPPpw==",
      "license": "MIT",
      "dependencies": {
        "@types/mdast": "^4.0.0",
        "mdast-util-to-markdown": "^2.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/retext": {
      "version": "9.0.0",
      "resolved": "https://registry.npmjs.org/retext/-/retext-9.0.0.tgz",
      "integrity": "sha512-sbMDcpHCNjvlheSgMfEcVrZko3cDzdbe1x/e7G66dFp0Ff7Mldvi2uv6JkJQzdRcvLYE8CA8Oe8siQx8ZOgTcA==",
      "license": "MIT",
      "dependencies": {
        "@types/nlcst": "^2.0.0",
        "retext-latin": "^4.0.0",
        "retext-stringify": "^4.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/retext-latin": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/retext-latin/-/retext-latin-4.0.0.tgz",
      "integrity": "sha512-hv9woG7Fy0M9IlRQloq/N6atV82NxLGveq+3H2WOi79dtIYWN8OaxogDm77f8YnVXJL2VD3bbqowu5E3EMhBYA==",
      "license": "MIT",
      "dependencies": {
        "@types/nlcst": "^2.0.0",
        "parse-latin": "^7.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/retext-smartypants": {
      "version": "6.2.0",
      "resolved": "https://registry.npmjs.org/retext-smartypants/-/retext-smartypants-6.2.0.tgz",
      "integrity": "sha512-kk0jOU7+zGv//kfjXEBjdIryL1Acl4i9XNkHxtM7Tm5lFiCog576fjNC9hjoR7LTKQ0DsPWy09JummSsH1uqfQ==",
      "license": "MIT",
      "dependencies": {
        "@types/nlcst": "^2.0.0",
        "nlcst-to-string": "^4.0.0",
        "unist-util-visit": "^5.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/retext-stringify": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/retext-stringify/-/retext-stringify-4.0.0.tgz",
      "integrity": "sha512-rtfN/0o8kL1e+78+uxPTqu1Klt0yPzKuQ2BfWwwfgIUSayyzxpM1PJzkKt4V8803uB9qSy32MvI7Xep9khTpiA==",
      "license": "MIT",
      "dependencies": {
        "@types/nlcst": "^2.0.0",
        "nlcst-to-string": "^4.0.0",
        "unified": "^11.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/rollup": {
      "version": "4.57.1",
      "resolved": "https://registry.npmjs.org/rollup/-/rollup-4.57.1.tgz",
      "integrity": "sha512-oQL6lgK3e2QZeQ7gcgIkS2YZPg5slw37hYufJ3edKlfQSGGm8ICoxswK15ntSzF/a8+h7ekRy7k7oWc3BQ7y8A==",
      "license": "MIT",
      "dependencies": {
        "@types/estree": "1.0.8"
      },
      "bin": {
        "rollup": "dist/bin/rollup"
      },
      "engines": {
        "node": ">=18.0.0",
        "npm": ">=8.0.0"
      },
      "optionalDependencies": {
        "@rollup/rollup-android-arm-eabi": "4.57.1",
        "@rollup/rollup-android-arm64": "4.57.1",
        "@rollup/rollup-darwin-arm64": "4.57.1",
        "@rollup/rollup-darwin-x64": "4.57.1",
        "@rollup/rollup-freebsd-arm64": "4.57.1",
        "@rollup/rollup-freebsd-x64": "4.57.1",
        "@rollup/rollup-linux-arm-gnueabihf": "4.57.1",
        "@rollup/rollup-linux-arm-musleabihf": "4.57.1",
        "@rollup/rollup-linux-arm64-gnu": "4.57.1",
        "@rollup/rollup-linux-arm64-musl": "4.57.1",
        "@rollup/rollup-linux-loong64-gnu": "4.57.1",
        "@rollup/rollup-linux-loong64-musl": "4.57.1",
        "@rollup/rollup-linux-ppc64-gnu": "4.57.1",
        "@rollup/rollup-linux-ppc64-musl": "4.57.1",
        "@rollup/rollup-linux-riscv64-gnu": "4.57.1",
        "@rollup/rollup-linux-riscv64-musl": "4.57.1",
        "@rollup/rollup-linux-s390x-gnu": "4.57.1",
        "@rollup/rollup-linux-x64-gnu": "4.57.1",
        "@rollup/rollup-linux-x64-musl": "4.57.1",
        "@rollup/rollup-openbsd-x64": "4.57.1",
        "@rollup/rollup-openharmony-arm64": "4.57.1",
        "@rollup/rollup-win32-arm64-msvc": "4.57.1",
        "@rollup/rollup-win32-ia32-msvc": "4.57.1",
        "@rollup/rollup-win32-x64-gnu": "4.57.1",
        "@rollup/rollup-win32-x64-msvc": "4.57.1",
        "fsevents": "~2.3.2"
      }
    },
    "node_modules/sax": {
      "version": "1.4.4",
      "resolved": "https://registry.npmjs.org/sax/-/sax-1.4.4.tgz",
      "integrity": "sha512-1n3r/tGXO6b6VXMdFT54SHzT9ytu9yr7TaELowdYpMqY/Ao7EnlQGmAQ1+RatX7Tkkdm6hONI2owqNx2aZj5Sw==",
      "license": "BlueOak-1.0.0",
      "engines": {
        "node": ">=11.0.0"
      }
    },
    "node_modules/semver": {
      "version": "7.7.3",
      "resolved": "https://registry.npmjs.org/semver/-/semver-7.7.3.tgz",
      "integrity": "sha512-SdsKMrI9TdgjdweUSR9MweHA4EJ8YxHn8DFaDisvhVlUOe4BF1tLD7GAj0lIqWVl+dPb/rExr0Btby5loQm20Q==",
      "license": "ISC",
      "bin": {
        "semver": "bin/semver.js"
      },
      "engines": {
        "node": ">=10"
      }
    },
    "node_modules/sharp": {
      "version": "0.34.5",
      "resolved": "https://registry.npmjs.org/sharp/-/sharp-0.34.5.tgz",
      "integrity": "sha512-Ou9I5Ft9WNcCbXrU9cMgPBcCK8LiwLqcbywW3t4oDV37n1pzpuNLsYiAV8eODnjbtQlSDwZ2cUEeQz4E54Hltg==",
      "hasInstallScript": true,
      "license": "Apache-2.0",
      "optional": true,
      "dependencies": {
        "@img/colour": "^1.0.0",
        "detect-libc": "^2.1.2",
        "semver": "^7.7.3"
      },
      "engines": {
        "node": "^18.17.0 || ^20.3.0 || >=21.0.0"
      },
      "funding": {
        "url": "https://opencollective.com/libvips"
      },
      "optionalDependencies": {
        "@img/sharp-darwin-arm64": "0.34.5",
        "@img/sharp-darwin-x64": "0.34.5",
        "@img/sharp-libvips-darwin-arm64": "1.2.4",
        "@img/sharp-libvips-darwin-x64": "1.2.4",
        "@img/sharp-libvips-linux-arm": "1.2.4",
        "@img/sharp-libvips-linux-arm64": "1.2.4",
        "@img/sharp-libvips-linux-ppc64": "1.2.4",
        "@img/sharp-libvips-linux-riscv64": "1.2.4",
        "@img/sharp-libvips-linux-s390x": "1.2.4",
        "@img/sharp-libvips-linux-x64": "1.2.4",
        "@img/sharp-libvips-linuxmusl-arm64": "1.2.4",
        "@img/sharp-libvips-linuxmusl-x64": "1.2.4",
        "@img/sharp-linux-arm": "0.34.5",
        "@img/sharp-linux-arm64": "0.34.5",
        "@img/sharp-linux-ppc64": "0.34.5",
        "@img/sharp-linux-riscv64": "0.34.5",
        "@img/sharp-linux-s390x": "0.34.5",
        "@img/sharp-linux-x64": "0.34.5",
        "@img/sharp-linuxmusl-arm64": "0.34.5",
        "@img/sharp-linuxmusl-x64": "0.34.5",
        "@img/sharp-wasm32": "0.34.5",
        "@img/sharp-win32-arm64": "0.34.5",
        "@img/sharp-win32-ia32": "0.34.5",
        "@img/sharp-win32-x64": "0.34.5"
      }
    },
    "node_modules/shiki": {
      "version": "3.21.0",
      "resolved": "https://registry.npmjs.org/shiki/-/shiki-3.21.0.tgz",
      "integrity": "sha512-N65B/3bqL/TI2crrXr+4UivctrAGEjmsib5rPMMPpFp1xAx/w03v8WZ9RDDFYteXoEgY7qZ4HGgl5KBIu1153w==",
      "license": "MIT",
      "dependencies": {
        "@shikijs/core": "3.21.0",
        "@shikijs/engine-javascript": "3.21.0",
        "@shikijs/engine-oniguruma": "3.21.0",
        "@shikijs/langs": "3.21.0",
        "@shikijs/themes": "3.21.0",
        "@shikijs/types": "3.21.0",
        "@shikijs/vscode-textmate": "^10.0.2",
        "@types/hast": "^3.0.4"
      }
    },
    "node_modules/sisteransi": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/sisteransi/-/sisteransi-1.0.5.tgz",
      "integrity": "sha512-bLGGlR1QxBcynn2d5YmDX4MGjlZvy2MRBDRNHLJ8VI6l6+9FUiyTFNJ0IveOSP0bcXgVDPRcfGqA0pjaqUpfVg==",
      "license": "MIT"
    },
    "node_modules/smol-toml": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/smol-toml/-/smol-toml-1.6.0.tgz",
      "integrity": "sha512-4zemZi0HvTnYwLfrpk/CF9LOd9Lt87kAt50GnqhMpyF9U3poDAP2+iukq2bZsO/ufegbYehBkqINbsWxj4l4cw==",
      "license": "BSD-3-Clause",
      "engines": {
        "node": ">= 18"
      },
      "funding": {
        "url": "https://github.com/sponsors/cyyynthia"
      }
    },
    "node_modules/source-map-js": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/source-map-js/-/source-map-js-1.2.1.tgz",
      "integrity": "sha512-UXWMKhLOwVKb728IUtQPXxfYU+usdybtUrK/8uGE8CQMvrhOpwvzDBwj0QhSL7MQc7vIsISBG8VQ8+IDQxpfQA==",
      "license": "BSD-3-Clause",
      "engines": {
        "node": ">=0.10.0"
      }
    },
    "node_modules/space-separated-tokens": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/space-separated-tokens/-/space-separated-tokens-2.0.2.tgz",
      "integrity": "sha512-PEGlAwrG8yXGXRjW32fGbg66JAlOAwbObuqVoJpv/mRgoWDQfgH1wDPvtzWyUSNAXBGSk8h755YDbbcEy3SH2Q==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/string-width": {
      "version": "7.2.0",
      "resolved": "https://registry.npmjs.org/string-width/-/string-width-7.2.0.tgz",
      "integrity": "sha512-tsaTIkKW9b4N+AEj+SVA+WhJzV7/zMhcSu78mLKWSk7cXMOSHsBKFWUs0fWwq8QyK3MgJBQRX6Gbi4kYbdvGkQ==",
      "license": "MIT",
      "dependencies": {
        "emoji-regex": "^10.3.0",
        "get-east-asian-width": "^1.0.0",
        "strip-ansi": "^7.1.0"
      },
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/stringify-entities": {
      "version": "4.0.4",
      "resolved": "https://registry.npmjs.org/stringify-entities/-/stringify-entities-4.0.4.tgz",
      "integrity": "sha512-IwfBptatlO+QCJUo19AqvrPNqlVMpW9YEL2LIVY+Rpv2qsjCGxaDLNRgeGsQWJhfItebuJhsGSLjaBbNSQ+ieg==",
      "license": "MIT",
      "dependencies": {
        "character-entities-html4": "^2.0.0",
        "character-entities-legacy": "^3.0.0"
      },
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/strip-ansi": {
      "version": "7.1.2",
      "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-7.1.2.tgz",
      "integrity": "sha512-gmBGslpoQJtgnMAvOVqGZpEz9dyoKTCzy2nfz/n8aIFhN/jCE/rCmcxabB6jOOHV+0WNnylOxaxBQPSvcWklhA==",
      "license": "MIT",
      "dependencies": {
        "ansi-regex": "^6.0.1"
      },
      "engines": {
        "node": ">=12"
      },
      "funding": {
        "url": "https://github.com/chalk/strip-ansi?sponsor=1"
      }
    },
    "node_modules/svgo": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/svgo/-/svgo-4.0.0.tgz",
      "integrity": "sha512-VvrHQ+9uniE+Mvx3+C9IEe/lWasXCU0nXMY2kZeLrHNICuRiC8uMPyM14UEaMOFA5mhyQqEkB02VoQ16n3DLaw==",
      "license": "MIT",
      "dependencies": {
        "commander": "^11.1.0",
        "css-select": "^5.1.0",
        "css-tree": "^3.0.1",
        "css-what": "^6.1.0",
        "csso": "^5.0.5",
        "picocolors": "^1.1.1",
        "sax": "^1.4.1"
      },
      "bin": {
        "svgo": "bin/svgo.js"
      },
      "engines": {
        "node": ">=16"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/svgo"
      }
    },
    "node_modules/tailwindcss": {
      "version": "4.1.18",
      "resolved": "https://registry.npmjs.org/tailwindcss/-/tailwindcss-4.1.18.tgz",
      "integrity": "sha512-4+Z+0yiYyEtUVCScyfHCxOYP06L5Ne+JiHhY2IjR2KWMIWhJOYZKLSGZaP5HkZ8+bY0cxfzwDE5uOmzFXyIwxw==",
      "license": "MIT"
    },
    "node_modules/tapable": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/tapable/-/tapable-2.3.0.tgz",
      "integrity": "sha512-g9ljZiwki/LfxmQADO3dEY1CbpmXT5Hm2fJ+QaGKwSXUylMybePR7/67YW7jOrrvjEgL1Fmz5kzyAjWVWLlucg==",
      "license": "MIT",
      "engines": {
        "node": ">=6"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/webpack"
      }
    },
    "node_modules/tiny-inflate": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/tiny-inflate/-/tiny-inflate-1.0.3.tgz",
      "integrity": "sha512-pkY1fj1cKHb2seWDy0B16HeWyczlJA9/WW3u3c4z/NiWDsO3DOU5D7nhTLE9CF0yXv/QZFY7sEJmj24dK+Rrqw==",
      "license": "MIT"
    },
    "node_modules/tinyexec": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/tinyexec/-/tinyexec-1.0.2.tgz",
      "integrity": "sha512-W/KYk+NFhkmsYpuHq5JykngiOCnxeVL8v8dFnqxSD8qEEdRfXk1SDM6JzNqcERbcGYj9tMrDQBYV9cjgnunFIg==",
      "license": "MIT",
      "engines": {
        "node": ">=18"
      }
    },
    "node_modules/tinyglobby": {
      "version": "0.2.15",
      "resolved": "https://registry.npmjs.org/tinyglobby/-/tinyglobby-0.2.15.tgz",
      "integrity": "sha512-j2Zq4NyQYG5XMST4cbs02Ak8iJUdxRM0XI5QyxXuZOzKOINmWurp3smXu3y5wDcJrptwpSjgXHzIQxR0omXljQ==",
      "license": "MIT",
      "dependencies": {
        "fdir": "^6.5.0",
        "picomatch": "^4.0.3"
      },
      "engines": {
        "node": ">=12.0.0"
      },
      "funding": {
        "url": "https://github.com/sponsors/SuperchupuDev"
      }
    },
    "node_modules/trim-lines": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/trim-lines/-/trim-lines-3.0.1.tgz",
      "integrity": "sha512-kRj8B+YHZCc9kQYdWfJB2/oUl9rA99qbowYYBtr4ui4mZyAQ2JpvVBd/6U2YloATfqBhBTSMhTpgBHtU0Mf3Rg==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/trough": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/trough/-/trough-2.2.0.tgz",
      "integrity": "sha512-tmMpK00BjZiUyVyvrBK7knerNgmgvcV/KLVyuma/SC+TQN167GrMRciANTz09+k3zW8L8t60jWO1GpfkZdjTaw==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/tsconfck": {
      "version": "3.1.6",
      "resolved": "https://registry.npmjs.org/tsconfck/-/tsconfck-3.1.6.tgz",
      "integrity": "sha512-ks6Vjr/jEw0P1gmOVwutM3B7fWxoWBL2KRDb1JfqGVawBmO5UsvmWOQFGHBPl5yxYz4eERr19E6L7NMv+Fej4w==",
      "license": "MIT",
      "bin": {
        "tsconfck": "bin/tsconfck.js"
      },
      "engines": {
        "node": "^18 || >=20"
      },
      "peerDependencies": {
        "typescript": "^5.0.0"
      },
      "peerDependenciesMeta": {
        "typescript": {
          "optional": true
        }
      }
    },
    "node_modules/tslib": {
      "version": "2.8.1",
      "resolved": "https://registry.npmjs.org/tslib/-/tslib-2.8.1.tgz",
      "integrity": "sha512-oJFu94HQb+KVduSUQL7wnpmqnfmLsOA/nAh6b6EH0wCEoK0/mPeXU6c3wKDV83MkOuHPRHtSXKKU99IBazS/2w==",
      "license": "0BSD",
      "optional": true
    },
    "node_modules/type-fest": {
      "version": "4.41.0",
      "resolved": "https://registry.npmjs.org/type-fest/-/type-fest-4.41.0.tgz",
      "integrity": "sha512-TeTSQ6H5YHvpqVwBRcnLDCBnDOHWYu7IvGbHT6N8AOymcr9PJGjc1GTtiWZTYg0NCgYwvnYWEkVChQAr9bjfwA==",
      "license": "(MIT OR CC0-1.0)",
      "engines": {
        "node": ">=16"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/typescript": {
      "version": "5.9.3",
      "resolved": "https://registry.npmjs.org/typescript/-/typescript-5.9.3.tgz",
      "integrity": "sha512-jl1vZzPDinLr9eUt3J/t7V6FgNEw9QjvBPdysz9KfQDD41fQrC2Y4vKQdiaUpFT4bXlb1RHhLpp8wtm6M5TgSw==",
      "license": "Apache-2.0",
      "peer": true,
      "bin": {
        "tsc": "bin/tsc",
        "tsserver": "bin/tsserver"
      },
      "engines": {
        "node": ">=14.17"
      }
    },
    "node_modules/ufo": {
      "version": "1.6.3",
      "resolved": "https://registry.npmjs.org/ufo/-/ufo-1.6.3.tgz",
      "integrity": "sha512-yDJTmhydvl5lJzBmy/hyOAA0d+aqCBuwl818haVdYCRrWV84o7YyeVm4QlVHStqNrrJSTb6jKuFAVqAFsr+K3Q==",
      "license": "MIT"
    },
    "node_modules/ultrahtml": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/ultrahtml/-/ultrahtml-1.6.0.tgz",
      "integrity": "sha512-R9fBn90VTJrqqLDwyMph+HGne8eqY1iPfYhPzZrvKpIfwkWZbcYlfpsb8B9dTvBfpy1/hqAD7Wi8EKfP9e8zdw==",
      "license": "MIT"
    },
    "node_modules/uncrypto": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/uncrypto/-/uncrypto-0.1.3.tgz",
      "integrity": "sha512-Ql87qFHB3s/De2ClA9e0gsnS6zXG27SkTiSJwjCc9MebbfapQfuPzumMIUMi38ezPZVNFcHI9sUIepeQfw8J8Q==",
      "license": "MIT"
    },
    "node_modules/unified": {
      "version": "11.0.5",
      "resolved": "https://registry.npmjs.org/unified/-/unified-11.0.5.tgz",
      "integrity": "sha512-xKvGhPWw3k84Qjh8bI3ZeJjqnyadK+GEFtazSfZv/rKeTkTjOJho6mFqh2SM96iIcZokxiOpg78GazTSg8+KHA==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "bail": "^2.0.0",
        "devlop": "^1.0.0",
        "extend": "^3.0.0",
        "is-plain-obj": "^4.0.0",
        "trough": "^2.0.0",
        "vfile": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unifont": {
      "version": "0.7.3",
      "resolved": "https://registry.npmjs.org/unifont/-/unifont-0.7.3.tgz",
      "integrity": "sha512-b0GtQzKCyuSHGsfj5vyN8st7muZ6VCI4XD4vFlr7Uy1rlWVYxC3npnfk8MyreHxJYrz1ooLDqDzFe9XqQTlAhA==",
      "license": "MIT",
      "dependencies": {
        "css-tree": "^3.1.0",
        "ofetch": "^1.5.1",
        "ohash": "^2.0.11"
      }
    },
    "node_modules/unist-util-find-after": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/unist-util-find-after/-/unist-util-find-after-5.0.0.tgz",
      "integrity": "sha512-amQa0Ep2m6hE2g72AugUItjbuM8X8cGQnFoHk0pGfrFeT9GZhzN5SW8nRsiGKK7Aif4CrACPENkA6P/Lw6fHGQ==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "unist-util-is": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-is": {
      "version": "6.0.1",
      "resolved": "https://registry.npmjs.org/unist-util-is/-/unist-util-is-6.0.1.tgz",
      "integrity": "sha512-LsiILbtBETkDz8I9p1dQ0uyRUWuaQzd/cuEeS1hoRSyW5E5XGmTzlwY1OrNzzakGowI9Dr/I8HVaw4hTtnxy8g==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-modify-children": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/unist-util-modify-children/-/unist-util-modify-children-4.0.0.tgz",
      "integrity": "sha512-+tdN5fGNddvsQdIzUF3Xx82CU9sMM+fA0dLgR9vOmT0oPT2jH+P1nd5lSqfCfXAw+93NhcXNY2qqvTUtE4cQkw==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "array-iterate": "^2.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-position": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/unist-util-position/-/unist-util-position-5.0.0.tgz",
      "integrity": "sha512-fucsC7HjXvkB5R3kTCO7kUjRdrS0BJt3M/FPxmHMBOm8JQi2BsHAHFsy27E0EolP8rp0NzXsJ+jNPyDWvOJZPA==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-remove-position": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/unist-util-remove-position/-/unist-util-remove-position-5.0.0.tgz",
      "integrity": "sha512-Hp5Kh3wLxv0PHj9m2yZhhLt58KzPtEYKQQ4yxfYFEO7EvHwzyDYnduhHnY1mDxoqr7VUwVuHXk9RXKIiYS1N8Q==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "unist-util-visit": "^5.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-stringify-position": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/unist-util-stringify-position/-/unist-util-stringify-position-4.0.0.tgz",
      "integrity": "sha512-0ASV06AAoKCDkS2+xw5RXJywruurpbC4JZSm7nr7MOt1ojAzvyyaO+UxZf18j8FCF6kmzCZKcAgN/yu2gm2XgQ==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-visit": {
      "version": "5.1.0",
      "resolved": "https://registry.npmjs.org/unist-util-visit/-/unist-util-visit-5.1.0.tgz",
      "integrity": "sha512-m+vIdyeCOpdr/QeQCu2EzxX/ohgS8KbnPDgFni4dQsfSCtpz8UqDyY5GjRru8PDKuYn7Fq19j1CQ+nJSsGKOzg==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "unist-util-is": "^6.0.0",
        "unist-util-visit-parents": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-visit-children": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/unist-util-visit-children/-/unist-util-visit-children-3.0.0.tgz",
      "integrity": "sha512-RgmdTfSBOg04sdPcpTSD1jzoNBjt9a80/ZCzp5cI9n1qPzLZWF9YdvWGN2zmTumP1HWhXKdUWexjy/Wy/lJ7tA==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unist-util-visit-parents": {
      "version": "6.0.2",
      "resolved": "https://registry.npmjs.org/unist-util-visit-parents/-/unist-util-visit-parents-6.0.2.tgz",
      "integrity": "sha512-goh1s1TBrqSqukSc8wrjwWhL0hiJxgA8m4kFxGlQ+8FYQ3C/m11FcTs4YYem7V664AhHVvgoQLk890Ssdsr2IQ==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "unist-util-is": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/unstorage": {
      "version": "1.17.4",
      "resolved": "https://registry.npmjs.org/unstorage/-/unstorage-1.17.4.tgz",
      "integrity": "sha512-fHK0yNg38tBiJKp/Vgsq4j0JEsCmgqH58HAn707S7zGkArbZsVr/CwINoi+nh3h98BRCwKvx1K3Xg9u3VV83sw==",
      "license": "MIT",
      "dependencies": {
        "anymatch": "^3.1.3",
        "chokidar": "^5.0.0",
        "destr": "^2.0.5",
        "h3": "^1.15.5",
        "lru-cache": "^11.2.0",
        "node-fetch-native": "^1.6.7",
        "ofetch": "^1.5.1",
        "ufo": "^1.6.3"
      },
      "peerDependencies": {
        "@azure/app-configuration": "^1.8.0",
        "@azure/cosmos": "^4.2.0",
        "@azure/data-tables": "^13.3.0",
        "@azure/identity": "^4.6.0",
        "@azure/keyvault-secrets": "^4.9.0",
        "@azure/storage-blob": "^12.26.0",
        "@capacitor/preferences": "^6 || ^7 || ^8",
        "@deno/kv": ">=0.9.0",
        "@netlify/blobs": "^6.5.0 || ^7.0.0 || ^8.1.0 || ^9.0.0 || ^10.0.0",
        "@planetscale/database": "^1.19.0",
        "@upstash/redis": "^1.34.3",
        "@vercel/blob": ">=0.27.1",
        "@vercel/functions": "^2.2.12 || ^3.0.0",
        "@vercel/kv": "^1 || ^2 || ^3",
        "aws4fetch": "^1.0.20",
        "db0": ">=0.2.1",
        "idb-keyval": "^6.2.1",
        "ioredis": "^5.4.2",
        "uploadthing": "^7.4.4"
      },
      "peerDependenciesMeta": {
        "@azure/app-configuration": {
          "optional": true
        },
        "@azure/cosmos": {
          "optional": true
        },
        "@azure/data-tables": {
          "optional": true
        },
        "@azure/identity": {
          "optional": true
        },
        "@azure/keyvault-secrets": {
          "optional": true
        },
        "@azure/storage-blob": {
          "optional": true
        },
        "@capacitor/preferences": {
          "optional": true
        },
        "@deno/kv": {
          "optional": true
        },
        "@netlify/blobs": {
          "optional": true
        },
        "@planetscale/database": {
          "optional": true
        },
        "@upstash/redis": {
          "optional": true
        },
        "@vercel/blob": {
          "optional": true
        },
        "@vercel/functions": {
          "optional": true
        },
        "@vercel/kv": {
          "optional": true
        },
        "aws4fetch": {
          "optional": true
        },
        "db0": {
          "optional": true
        },
        "idb-keyval": {
          "optional": true
        },
        "ioredis": {
          "optional": true
        },
        "uploadthing": {
          "optional": true
        }
      }
    },
    "node_modules/vfile": {
      "version": "6.0.3",
      "resolved": "https://registry.npmjs.org/vfile/-/vfile-6.0.3.tgz",
      "integrity": "sha512-KzIbH/9tXat2u30jf+smMwFCsno4wHVdNmzFyL+T/L3UGqqk6JKfVqOFOZEpZSHADH1k40ab6NUIXZq422ov3Q==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "vfile-message": "^4.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/vfile-location": {
      "version": "5.0.3",
      "resolved": "https://registry.npmjs.org/vfile-location/-/vfile-location-5.0.3.tgz",
      "integrity": "sha512-5yXvWDEgqeiYiBe1lbxYF7UMAIm/IcopxMHrMQDq3nvKcjPKIhZklUKL+AE7J7uApI4kwe2snsK+eI6UTj9EHg==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "vfile": "^6.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/vfile-message": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/vfile-message/-/vfile-message-4.0.3.tgz",
      "integrity": "sha512-QTHzsGd1EhbZs4AsQ20JX1rC3cOlt/IWJruk893DfLRr57lcnOeMaWG4K0JrRta4mIJZKth2Au3mM3u03/JWKw==",
      "license": "MIT",
      "dependencies": {
        "@types/unist": "^3.0.0",
        "unist-util-stringify-position": "^4.0.0"
      },
      "funding": {
        "type": "opencollective",
        "url": "https://opencollective.com/unified"
      }
    },
    "node_modules/vite": {
      "version": "6.4.1",
      "resolved": "https://registry.npmjs.org/vite/-/vite-6.4.1.tgz",
      "integrity": "sha512-+Oxm7q9hDoLMyJOYfUYBuHQo+dkAloi33apOPP56pzj+vsdJDzr+j1NISE5pyaAuKL4A3UD34qd0lx5+kfKp2g==",
      "license": "MIT",
      "dependencies": {
        "esbuild": "^0.25.0",
        "fdir": "^6.4.4",
        "picomatch": "^4.0.2",
        "postcss": "^8.5.3",
        "rollup": "^4.34.9",
        "tinyglobby": "^0.2.13"
      },
      "bin": {
        "vite": "bin/vite.js"
      },
      "engines": {
        "node": "^18.0.0 || ^20.0.0 || >=22.0.0"
      },
      "funding": {
        "url": "https://github.com/vitejs/vite?sponsor=1"
      },
      "optionalDependencies": {
        "fsevents": "~2.3.3"
      },
      "peerDependencies": {
        "@types/node": "^18.0.0 || ^20.0.0 || >=22.0.0",
        "jiti": ">=1.21.0",
        "less": "*",
        "lightningcss": "^1.21.0",
        "sass": "*",
        "sass-embedded": "*",
        "stylus": "*",
        "sugarss": "*",
        "terser": "^5.16.0",
        "tsx": "^4.8.1",
        "yaml": "^2.4.2"
      },
      "peerDependenciesMeta": {
        "@types/node": {
          "optional": true
        },
        "jiti": {
          "optional": true
        },
        "less": {
          "optional": true
        },
        "lightningcss": {
          "optional": true
        },
        "sass": {
          "optional": true
        },
        "sass-embedded": {
          "optional": true
        },
        "stylus": {
          "optional": true
        },
        "sugarss": {
          "optional": true
        },
        "terser": {
          "optional": true
        },
        "tsx": {
          "optional": true
        },
        "yaml": {
          "optional": true
        }
      }
    },
    "node_modules/vitefu": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/vitefu/-/vitefu-1.1.1.tgz",
      "integrity": "sha512-B/Fegf3i8zh0yFbpzZ21amWzHmuNlLlmJT6n7bu5e+pCHUKQIfXSYokrqOBGEMMe9UG2sostKQF9mml/vYaWJQ==",
      "license": "MIT",
      "workspaces": [
        "tests/deps/*",
        "tests/projects/*",
        "tests/projects/workspace/packages/*"
      ],
      "peerDependencies": {
        "vite": "^3.0.0 || ^4.0.0 || ^5.0.0 || ^6.0.0 || ^7.0.0-beta.0"
      },
      "peerDependenciesMeta": {
        "vite": {
          "optional": true
        }
      }
    },
    "node_modules/web-namespaces": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/web-namespaces/-/web-namespaces-2.0.1.tgz",
      "integrity": "sha512-bKr1DkiNa2krS7qxNtdrtHAmzuYGFQLiQ13TsorsdT6ULTkPLKuu5+GsFpDlg6JFjUTwX2DyhMPG2be8uPrqsQ==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    },
    "node_modules/which-pm-runs": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/which-pm-runs/-/which-pm-runs-1.1.0.tgz",
      "integrity": "sha512-n1brCuqClxfFfq/Rb0ICg9giSZqCS+pLtccdag6C2HyufBrh3fBOiy9nb6ggRMvWOVH5GrdJskj5iGTZNxd7SA==",
      "license": "MIT",
      "engines": {
        "node": ">=4"
      }
    },
    "node_modules/widest-line": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/widest-line/-/widest-line-5.0.0.tgz",
      "integrity": "sha512-c9bZp7b5YtRj2wOe6dlj32MK+Bx/M/d+9VB2SHM1OtsUHR0aV0tdP6DWh/iMt0kWi1t5g1Iudu6hQRNd1A4PVA==",
      "license": "MIT",
      "dependencies": {
        "string-width": "^7.0.0"
      },
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/wrap-ansi": {
      "version": "9.0.2",
      "resolved": "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-9.0.2.tgz",
      "integrity": "sha512-42AtmgqjV+X1VpdOfyTGOYRi0/zsoLqtXQckTmqTeybT+BDIbM/Guxo7x3pE2vtpr1ok6xRqM9OpBe+Jyoqyww==",
      "license": "MIT",
      "dependencies": {
        "ansi-styles": "^6.2.1",
        "string-width": "^7.0.0",
        "strip-ansi": "^7.1.0"
      },
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/chalk/wrap-ansi?sponsor=1"
      }
    },
    "node_modules/xxhash-wasm": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/xxhash-wasm/-/xxhash-wasm-1.1.0.tgz",
      "integrity": "sha512-147y/6YNh+tlp6nd/2pWq38i9h6mz/EuQ6njIrmW8D1BS5nCqs0P6DG+m6zTGnNz5I+uhZ0SHxBs9BsPrwcKDA==",
      "license": "MIT"
    },
    "node_modules/yargs-parser": {
      "version": "21.1.1",
      "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-21.1.1.tgz",
      "integrity": "sha512-tVpsJW7DdjecAiFpbIB1e3qxIQsE6NoPc5/eTdrbbIC4h0LVsWhnoa3g+m2HclBIujHzsxZ4VJVA+GUuc2/LBw==",
      "license": "ISC",
      "engines": {
        "node": ">=12"
      }
    },
    "node_modules/yocto-queue": {
      "version": "1.2.2",
      "resolved": "https://registry.npmjs.org/yocto-queue/-/yocto-queue-1.2.2.tgz",
      "integrity": "sha512-4LCcse/U2MHZ63HAJVE+v71o7yOdIe4cZ70Wpf8D/IyjDKYQLV5GD46B+hSTjJsvV5PztjvHoU580EftxjDZFQ==",
      "license": "MIT",
      "engines": {
        "node": ">=12.20"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/yocto-spinner": {
      "version": "0.2.3",
      "resolved": "https://registry.npmjs.org/yocto-spinner/-/yocto-spinner-0.2.3.tgz",
      "integrity": "sha512-sqBChb33loEnkoXte1bLg45bEBsOP9N1kzQh5JZNKj/0rik4zAPTNSAVPj3uQAdc6slYJ0Ksc403G2XgxsJQFQ==",
      "license": "MIT",
      "dependencies": {
        "yoctocolors": "^2.1.1"
      },
      "engines": {
        "node": ">=18.19"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/yoctocolors": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/yoctocolors/-/yoctocolors-2.1.2.tgz",
      "integrity": "sha512-CzhO+pFNo8ajLM2d2IW/R93ipy99LWjtwblvC1RsoSUMZgyLbYFr221TnSNT7GjGdYui6P459mw9JH/g/zW2ug==",
      "license": "MIT",
      "engines": {
        "node": ">=18"
      },
      "funding": {
        "url": "https://github.com/sponsors/sindresorhus"
      }
    },
    "node_modules/zod": {
      "version": "3.25.76",
      "resolved": "https://registry.npmjs.org/zod/-/zod-3.25.76.tgz",
      "integrity": "sha512-gzUt/qt81nXsFGKIFcC3YnfEAx5NkunCfnDlvuBSSFS02bcXu4Lmea0AFIUwbLWxWPx3d9p8S5QoaujKcNQxcQ==",
      "license": "MIT",
      "funding": {
        "url": "https://github.com/sponsors/colinhacks"
      }
    },
    "node_modules/zod-to-json-schema": {
      "version": "3.25.1",
      "resolved": "https://registry.npmjs.org/zod-to-json-schema/-/zod-to-json-schema-3.25.1.tgz",
      "integrity": "sha512-pM/SU9d3YAggzi6MtR4h7ruuQlqKtad8e9S0fmxcMi+ueAK5Korys/aWcV9LIIHTVbj01NdzxcnXSN+O74ZIVA==",
      "license": "ISC",
      "peerDependencies": {
        "zod": "^3.25 || ^4"
      }
    },
    "node_modules/zod-to-ts": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/zod-to-ts/-/zod-to-ts-1.2.0.tgz",
      "integrity": "sha512-x30XE43V+InwGpvTySRNz9kB7qFU8DlyEy7BsSTCHPH1R0QasMmHWZDCzYm6bVXtj/9NNJAZF3jW8rzFvH5OFA==",
      "peerDependencies": {
        "typescript": "^4.9.4 || ^5.0.2",
        "zod": "^3"
      }
    },
    "node_modules/zwitch": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/zwitch/-/zwitch-2.0.4.tgz",
      "integrity": "sha512-bXE4cR/kVZhKZX/RjPEflHaKVhUVl85noU3v6b8apfQEc1x4A+zBxjZ4lN8LqGd6WZ3dl98pY4o717VFmoPp+A==",
      "license": "MIT",
      "funding": {
        "type": "github",
        "url": "https://github.com/sponsors/wooorm"
      }
    }
  }
}

```


## FICHIER: ./.vscode/launch.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
{
  "version": "0.2.0",
  "configurations": [
    {
      "command": "./node_modules/.bin/astro dev",
      "name": "Development server",
      "request": "launch",
      "type": "node-terminal"
    }
  ]
}

```


## FICHIER: ./.vscode/extensions.json

```json vert{} sed s/js/javascript/;s/ts/typescript/
{
  "recommendations": ["astro-build.astro-vscode"],
  "unwantedRecommendations": []
}

```


## FICHIER: ./.gitignore

```gitignore vert{} sed s/js/javascript/;s/ts/typescript/
# ─────────────────────────────────────────────────────────────────
# SORTIES DE BUILD & COMPILATION
# ─────────────────────────────────────────────────────────────────
dist/
.output/
build/
out/
.next/
.astro/
.cache/
*.tsbuildinfo

# ─────────────────────────────────────────────────────────────────
# DÉPENDANCES & PAQUETS
# ─────────────────────────────────────────────────────────────────
node_modules/
jspm_packages/
.pnpm-store/

# ─────────────────────────────────────────────────────────────────
# FICHIERS DE CONFIGURATION LOCALE & VARIABLES D'ENVIRONNEMENT
# ─────────────────────────────────────────────────────────────────
# Ne jamais pousser de secrets ou clés API sur GitHub
.env
.env.local
.env.development
.env.test
.env.production
.env.*.local
*.local

# ─────────────────────────────────────────────────────────────────
# LOGS ET RAPPORTS DE DIAGNOSTIC
# ─────────────────────────────────────────────────────────────────
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
pnpm-debug.log*
lerna-debug.log*
.eslintcache

# ─────────────────────────────────────────────────────────────────
# SYSTÈME (Ubuntu / Linux & macOS)
# ─────────────────────────────────────────────────────────────────
.DS_Store
.AppleDouble
.LSOverride
 Thumbs.db
Thumbs.db:encrypt
*~
*.bak
*.sw?

# ─────────────────────────────────────────────────────────────────
# ÉDITEURS DE CODE (VS Code, JetBrains)
# ─────────────────────────────────────────────────────────────────
.vscode/*
!.vscode/extensions.json
.idea/
*.suo
*.ntvs*
*.njsproj
*.sln

# ─────────────────────────────────────────────────────────────────
# LOGICIELS DE CONCEPTION & DIVERS
# ─────────────────────────────────────────────────────────────────
.pnpm-debug.log*
# Ignorer le fichier généré pour donner du contexte à l'IA
contexte_portfolio_ia.md

```
