# Google AI Hackathon - Abidjan 2025
##  Luna (apaisement, comme la lune) - Chatbot pour la santé mentale
Assistant de soutien à l'empathie, au réconfort et au soutien émotionnel

## 🧠 Énoncé du problème
Lors des élections présidentielles du Sénégal en 2024, plus de 2000 personnes ont été détenues dans un contexte fortement marqué par des tensions politiques, de l'incertitude et des divisions sociales. Ce climat a profondément affecté la santé mentale de nombreuses personnes, qu’elles soient directement concernées par les détentions ou témoins de ces événements.

Plus largement, des millions de personnes dans le monde souffrent également de dépression, d'anxiété et de solitude. Beaucoup n’ont personne à qui parler, et l’absence de soutien psychologique peut entraîner des conséquences graves, voire irréversibles.

Luna vise à répondre à cette urgence en offrant un espace sûr, anonyme et bienveillant où chacun peut exprimer ses pensées et recevoir des réponses empathiques, motivantes et sans jugement, 24h/24 et 7j/7.

## 💡 Motivation et objectif
Réponse à une crise réelle : L'idée de Luna est née en constatant l’impact psychologique des détentions massives liées aux élections de 2024 au Sénégal. Une crise silencieuse qui a mis en lumière l’urgence d’outils de soutien accessibles à tous.

- **Empathie à grande échelle** : Offrir un accès universel au soutien en matière de santé mentale, en particulier dans les contextes de crise politique ou sociale.

- **Confidentialité avant tout** : Aucun compte requis, aucun suivi. L’utilisateur reste totalement anonyme.

- **Impact positif durable** : Encourager, apaiser et accompagner les utilisateurs avec douceur, respect et humanité.

---

## 🛠️ Pile technologique

- **Frontend:** React, TypeScript, Tailwind CSS
- **Backend:** Next.js (Node.js), SQLite
- **Model AI:** Local LLMs (Gemma via Ollama)
- **Deploiement:** Docker, Vercel/Netlify (frontend), Render/Heroku (backend)

---

## 🚀 Fonctionnalités

- Discussion anonyme et encourageante avec un compagnon de santé mentale IA
- Interface utilisateur moderne et apaisante axée sur le confort de l'utilisateur
- Réponses motivationnelles, positives et empathiques
- Suggestions d'articles, de méditation et de groupes de soutien
- Historique de discussion persistant et prise en charge multi-chat
- Inférence IA rapide et locale (aucune API cloud requise)

---

## 🖥️  Comment exécuter localement

### **Exigences**
- Node.js (v18+ recommandé)
- npm
- [Ollama](https://ollama.com/) (for local LLMs)
- Git

### **Étapes de configuration**

1. **Cloner le dépôt:**
   ```sh
   git clone https://gitlab.com/beuguefallou/luna.git
   cd luna
   ```

2. **Installer les dépendances:**
   ```sh
   # Install backend dependencies
   cd backend
   npm install
   
   # Install frontend dependencies
   cd ../frontend
   npm install
   ```

3. **Configurer Ollama:**
   ```sh
   # Install Ollama from https://ollama.com/
   # Pull the Gemma model
   ollama pull gemma3
   ```

4. **Initialiser la base de données:**
   ```sh
   cd backend
   npm run build
   ```

### **Exécution de l'application**

1. **Démarrer Ollama (Port : 11434)**
   ```sh
   ollama serve
   ```
   - Cela démarrera le serveur Ollama à http://localhost:11434
   - Gardez cette fenêtre de terminal ouverte

2. **Démarrer le backend (Port : 3001)**
   ```sh
   cd backend
    npm run dev
   ```
   or
   ```bash
         cd backend
         npm run dev
   ```
         or
   ```cmd
         cd backend
         npm run dev

   ```


   - Cela démarrera l'application React à http://localhost:3001
   - Gardez cette fenêtre de terminal ouverte

3. **Démarrer le frontend (Port : 3000)**
   ```sh
   cd frontend
   npm start
   ```
   - Cela démarrera l'application React à http://localhost:3000
   - L'application s'ouvrira automatiquement dans votre navigateur par défaut

# Autres Méthodes
## Option 1 : Utiliser Windows Terminal
Sur Windows, tu peux utiliser Windows Terminal (si tu ne l'as pas encore installé, tu peux le télécharger sur le Microsoft Store).

Pour utiliser Windows Terminal dans ton script, tu peux essayer quelque chose comme ceci dans run.sh :

```bash
start wt -w 0 new-tab -d . bash -c "votre_commande; exec bash"
```
wt est l'exécutable de Windows Terminal.

- ``-w 0`` spécifie que tu veux ouvrir le terminal dans la fenêtre par défaut.

new-tab ouvre un nouvel onglet dans Windows Terminal.

- ``-d .`` spécifie le répertoire de travail (le répertoire courant dans ce cas).

- ``bash -c "votre_commande; exec bash"`` exécute une commande et garde la fenêtre ouverte.

## Option 2 : Utiliser cmd ou PowerShell
Si tu ne veux pas utiliser Windows Terminal, tu peux utiliser cmd ou PowerShell pour ouvrir des nouvelles fenêtres de terminal. Exemple :

CMD :

```bash
start cmd /k "votre_commande"
```
PowerShell :

```bash

start powershell -NoExit -Command "votre_commande"
```
Cela ouvrira une nouvelle fenêtre de terminal et exécutera la commande spécifiée.
## 🔧 Option 3 : Installer gnome-terminal
Si vous utilisez un système basé sur GNOME (comme Ubuntu), vous pouvez simplement l’installer avec :

```bash
sudo apt update
sudo apt install gnome-terminal
```


## ✅ 1. Solution universelle (Windows + PowerShell) avec un .ps1
Tu peux créer un script PowerShell (run.ps1) comme ceci :
```
powershell

# run.ps1

# Lancement de l'installation dans PowerShell
Start-Process powershell -ArgumentList "cd backend; npm install" -NoNewWindow
Start-Process powershell -ArgumentList "cd frontend; npm install" -NoNewWindow

# Lancement du téléchargement du modèle Gemma
Start-Process powershell -ArgumentList "ollama pull gemma3"

# Compilation backend
Start-Process powershell -ArgumentList "cd backend; npm run build"

# Démarrage de Ollama (Port : 11434)
Start-Process powershell -ArgumentList "ollama serve"

# Démarrage du backend (Port : 3001)
Start-Process powershell -ArgumentList "cd backend; $env:PORT=3001; npm run dev"

# Démarrage du frontend (Port : 3000)
Start-Process powershell -ArgumentList "cd frontend; npm start"
```
> ⚠️ Pour exécuter ce fichier :
Ouvre PowerShell en mode administrateur et exécute :
```
powershell

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
./run.ps1
```
## ✅ 2. Solution CMD / .bat pour Windows uniquement
Crée un fichier run.bat :
```
bat

@echo off

start "Install backend dependencies" cmd /k "cd backend && npm install"
start "Install frontend dependencies" cmd /k "cd frontend && npm install"
start "Pull gemma model" cmd /k "ollama pull gemma3"
start "Build backend" cmd /k "cd backend && npm run build"
start "Start ollama" cmd /k "ollama serve"
start "Start backend" cmd /k "cd backend && set PORT=3001 && npm run dev"
start "Start frontend" cmd /k "cd frontend && npm start"
Double-clique sur le fichier pour tout lancer dans des fenêtres de terminal séparées.
```

## ✅ 3. Script Bash (Linux/macOS ou Git Bash sur Windows)
Crée un fichier run.sh :
```
bash

#!/bin/bash

# Install backend deps
gnome-terminal -- bash -c "cd backend && npm install; exec bash"
# Install frontend deps
gnome-terminal -- bash -c "cd frontend && npm install; exec bash"

# Pull gemma model
gnome-terminal -- bash -c "ollama pull gemma3; exec bash"

# Build backend
gnome-terminal -- bash -c "cd backend && npm run build; exec bash"

# Start ollama
gnome-terminal -- bash -c "ollama serve; exec bash"

# Start backend
gnome-terminal -- bash -c "cd backend && PORT=3001 npm run dev; exec bash"

# Start frontend
gnome-terminal -- bash -c "cd frontend && npm start; exec bash"
Si tu es sous WSL ou Ubuntu, installe gnome-terminal ou adapte avec xterm, konsole, etc.
```
> 🧠 Recommandation
- Si tu es sous Windows uniquement, utilise le .bat ou .ps1

- Si tu es sur Git Bash ou WSL, préfère le run.sh



### **Configuration du port**
- Frontend: http://localhost:3000
- Backend: http://localhost:3001
- Ollama: http://localhost:11434

### **Dépannage**
Si vous rencontrez des conflits de ports :
1. Vérifiez si un processus utilise le port 3000 :

   ```sh
   netstat -ano | findstr :3000
   ```
2. Tuez le processus si nécessaire :
   ```sh
   taskkill /F /PID <process_id>
   ```

 Ollama affiche  "port déjà utilisé ":
1. Vérifiez si Ollama est déjà en cours d'exécution
2. Tuer tous les processus Ollama existants
3. Redémarrer Ollama

---

## 📝 Améliorations futures

- Historique de discussion persistant et prise en charge multi-chat
- Des suggestions et des ressources plus personnalisées
- Interface utilisateur adaptée aux mobiles
- Options de déploiement dans le cloud


---

## 🤝 Contributions
Les pull requests et suggestions sont les bienvenues ! N'hésitez pas à ouvrir une issue pour discuter de vos idées.

---

## 📄 License

MIT

---

## 🙏 Remerciements

- [Ollama](https://ollama.com/)
- [Gemma LLM](https://ai.google.dev/gemma)
- [React](https://react.dev/)
- [Next.js](https://nextjs.org/)
- [Tailwind CSS](https://tailwindcss.com/)

---
## Quelques fonctionnalités de l'application:-


Page d'accueil                 |                   Reponse ChatBot
:---------------------------------:        |      :------------------------------:
<img src="Screenshots/Capture1.PNG" height="200">  | <img src="Screenshots/Capture.PNG" height="200">


> "Si vous ou quelqu'un que vous connaissez éprouvez des difficultés, veuillez contacter un professionnel de la santé mentale ou une ligne d'écoute de votre pays. LUNA. ne remplace pas une aide professionnelle.