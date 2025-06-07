#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Check if Flutter is already installed in $HOME/flutter
if [ ! -d "$HOME/flutter" ]; then
  echo "Installing Flutter SDK..."
  git clone https://github.com/flutter/flutter.git -b stable $HOME/flutter
fi

# Add flutter to PATH
export PATH="$HOME/flutter/bin:$PATH"

# Verify Flutter version
flutter --version

# Get dependencies
flutter pub get

# Build the Flutter web project
flutter build web
