#!/bin/bash

# Ensure Rust env is loaded
source $HOME/.cargo/env

# Install Anchor CLI
echo "Installing Anchor CLI..."
cargo install --git https://github.com/coral-xyz/anchor anchor-cli --locked

# Install Solana CLI
echo "Installing Solana CLI..."
sh -c "$(curl -sSfL https://release.solana.com/stable/install)"

# Set Solana to PATH
echo 'export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Confirm versions
echo "🧪 Checking installed versions..."
node -v
tsc -v || echo "You might need to install TypeScript via npm globally."
rustc --version
cargo --version
anchor --version
solana --version
