@echo off

start "Install backend dependencies" cmd /k "cd backend && npm install"
start "Install frontend dependencies" cmd /k "cd frontend && npm install"
start "Pull gemma model" cmd /k "ollama pull gemma3"
start "Build backend" cmd /k "cd backend && npm run build"
start "Start ollama" cmd /k "ollama serve"
start "Start backend" cmd /k "cd backend && set PORT=3001 && npm run dev"
start "Start frontend" cmd /k "cd frontend && npm start"
