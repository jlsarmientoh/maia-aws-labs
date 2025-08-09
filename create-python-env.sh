#!/bin/bash

# Step 1: Check that python3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: python3 is not installed."
    exit 1
fi

# Step 2: Create a virtual environment named 'maia-aws-labs'
python3 -m venv maia-aws-labs

if [ $? -ne 0 ]; then
    echo "❌ Error: Failed to create virtual environment."
    exit 1
fi

# Step 3: Activate the created environment
echo "✅ To activate the virtual environment, run:"
echo "👉 source ./maia-aws-labs/bin/activate"