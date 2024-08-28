#!/bin/bash

read -p "Bonjour ! Quel est votre prénom ? " prenom

read -p "Et votre nom de famille ? " nom

nom_complet="$prenom $nom"

echo "Enchanté de vous rencontrer, $nom_complet ! Passez une belle journée :)"
