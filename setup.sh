#!/bin/bash

# Setup script for G4A Playground
# Creates conda environment and installs development dependencies

set -e

echo "Setting up G4A Playground development environment..."
echo ""

# Check if conda is available
if ! command -v conda &> /dev/null; then
    echo "Error: conda is not installed or not in PATH"
    echo "Please install conda/miniconda first"
    exit 1
fi

# Create conda environment from environment.yml (conda reads the name from the file)
if ! conda env list | grep -q "g4a_playground"; then
    echo "Creating conda environment from environment.yml..."
    conda env create -f environment.yml
    echo "✅ Conda environment created successfully"
else
    echo "✅ Conda environment 'g4a_playground' already exists"
fi

# Activate conda environment
echo "Activating conda environment: g4a_playground"
eval "$(conda shell.bash hook)"
conda activate g4a_playground

# Check if poetry is available in the environment
if ! command -v poetry &> /dev/null; then
    echo "Installing poetry in conda environment..."
    conda install -c conda-forge poetry -y
fi

# Install dependencies with Poetry
echo "Installing Python dependencies with Poetry..."
poetry install

echo ""
echo "✅ Setup completed successfully!"
echo ""
echo "To use the environment:"
echo "  conda activate g4a_playground"
echo ""
echo "To start the development server:"
echo "  python3 -m http.server 8000"
echo "  # Then visit http://localhost:8000"
echo ""
echo "Or simply open index.html in your browser:"
echo "  open index.html  # macOS"
echo ""
echo "To use development tools (if needed):"
echo "  poetry run black .     # Format code"
echo "  poetry run ruff check . # Lint code"
