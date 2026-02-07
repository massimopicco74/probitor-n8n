# Use a Node Alpine base with a package manager
FROM node:20-alpine

# Install poppler-utils for pdftotext and bash
RUN apk add --no-cache poppler-utils bash

# Install n8n globally
RUN npm install -g n8n@2.6.3

# Create and set working directory
WORKDIR /home/node

# Ensure we run as the node user
USER node

# Start n8n
CMD ["n8n", "start"]
