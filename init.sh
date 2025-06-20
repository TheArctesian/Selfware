#!/usr/bin/env bash

# Create a directory to store all repos

echo "Cloning repositories..."

# Clone each repository
echo "Cloning canon..."
git clone https://github.com/TheArctesian/canon

echo "Cloning echo..."
git clone https://github.com/TheArctesian/echo

echo "Cloning gyges..."
git clone https://github.com/TheArctesian/gyges

echo "Cloning agora..."
git clone https://github.com/TheArctesian/agora

echo "Cloning lexicon..."
git clone https://github.com/TheArctesian/lexicon

echo "All repositories cloned successfully!"
echo "Repositories are stored in $(pwd)"

# Create a .gitignore file in the parent directory to ignore all cloned repos
cat > .gitignore << 'EOL'
# Ignore all cloned repositories
/canon/
/echo/
/gyges/
/agora/
/lexicon/
EOL

echo "Created .gitignore to ignore all cloned repositories"

# List the cloned repositories
echo "Cloned repositories:"
ls -la
