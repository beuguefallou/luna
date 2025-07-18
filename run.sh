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
