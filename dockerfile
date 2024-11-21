# Étape 1 : Utiliser une image de base Node.js
FROM node:16

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les fichiers nécessaires pour installer les dépendances
COPY package*.json ./

# Étape 4 : Installer les dépendances de l'application
RUN npm install

# Étape 5 : Copier tous les fichiers de l'application dans le conteneur
COPY . .

# Étape 6 : Exposer le port utilisé par l'application
EXPOSE 3000

# Étape 7 : Définir la commande par défaut pour démarrer l'application
CMD ["npm", "start"]
