#!/bin/bash

# Fonction pour générer une séquence aléatoire de nucléotides
generer_sequence() {
    local longueur=$1
    local sequence=""
    local nucleotides=("A" "T" "C" "G")

    for ((i=0; i<longueur; i++)); do
        # Choisir un nucléotide aléatoire
        sequence+="${nucleotides[RANDOM % ${#nucleotides[@]}]}"
    done

    echo "$sequence"
}

# Demander le nombre de séquences et leur longueur
read -p "Combien de séquences de nucléotides voulez-vous générer ? " nombre_sequences
read -p "Quelle est la longueur de chaque séquence ? " longueur_sequence

# Générer et afficher les séquences
echo "Génération des séquences de nucléotides :"
for ((i=0; i<nombre_sequences; i++)); do
    sequence=$(generer_sequence $longueur_sequence)
    echo "$sequence"
done

