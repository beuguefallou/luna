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
