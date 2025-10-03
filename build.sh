#!/bin/bash

# Build script for Netlify
# This script injects the API key from environment variables into config.js

echo "🚀 Starting Netlify build process..."

# Check if GEMINI_API_KEY environment variable is set
if [ -z "$GEMINI_API_KEY" ]; then
    echo "❌ ERROR: GEMINI_API_KEY environment variable is not set!"
    echo "Please add it in Netlify Dashboard: Site settings > Build & deploy > Environment"
    exit 1
fi

echo "✅ GEMINI_API_KEY found in environment variables"

# Create config.js with the actual API key
cat > config.js << EOF
// AUTO-GENERATED FILE - DO NOT EDIT
// Generated during Netlify build process
// API key injected from environment variables

window.GEMINI_KEY = "$GEMINI_API_KEY";

window.getGeminiKey = function() {
    return window.GEMINI_KEY;
};
EOF

echo "✅ config.js generated successfully"
echo "📦 Build complete! Ready for deployment."
