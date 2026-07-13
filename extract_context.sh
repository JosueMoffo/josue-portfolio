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
