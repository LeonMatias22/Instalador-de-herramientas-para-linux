#!/bin/bash

# Ruta donde están los módulos
MODULES_DIR="./modules"

# Título
echo "🛠️  Instalador de Herramientas para Programadores (Linux)"
echo "---------------------------------------------------------"
echo "Seleccioná qué querés instalar (usa el número y Enter):"

# Menú
PS3="Seleccioná una opción (o escribí 0 para salir): "

options=(
  "Editar de código (VS Code, Vim)"
  "Git + Configurar GitHub"
  "JavaScript + Node.js"
  "Python + pip"
  "Salir"
)

select opt in "${options[@]}"
do
  case $REPLY in
    1) bash "$MODULES_DIR/editors.sh" ;;
    2) bash "$MODULES_DIR/git.sh" ;;
    3) bash "$MODULES_DIR/javascript.sh" ;;
    4) bash "$MODULES_DIR/python.sh" ;;
    5|0) echo "👋 Saliendo del instalador."; break ;;
    *) echo "❌ Opción no válida. Probá de nuevo." ;;
  esac
done
