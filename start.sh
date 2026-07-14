#!/bin/bash

echo "🚀 Starting Browser Agent..."

# Check if required environment variables are set
if [ -z "$OPENAI_API_KEY" ]; then
    echo "❌ Error: OPENAI_API_KEY not set"
    echo "Please set your 9Router API key in .env file"
    exit 1
fi

if [ -z "$OPENAI_BASE_URL" ]; then
    echo "⚠️ Warning: OPENAI_BASE_URL not set, using default"
    export OPENAI_BASE_URL="http://localhost:8080/v1"
fi

if [ -z "$MODEL_NAME" ]; then
    echo "⚠️ Warning: MODEL_NAME not set, using default"
    export MODEL_NAME="oc/mimo-v2.5-free"
fi

echo "✅ Configuration:"
echo "   Model: $MODEL_NAME"
echo "   API URL: $OPENAI_BASE_URL"
echo "   Port: ${PORT:-3000}"
echo ""

# Start the application
exec node dist/index.js
