# Minecraft Server on Render.com

This repository contains configuration files to run a 24/7 Minecraft server on Render.com.

## Setup Instructions

1. Create a new Render.com account if you don't have one already
2. Fork this repository to your GitHub account
3. In Render.com dashboard:
   - Click "New +"
   - Select "Web Service"
   - Connect your GitHub repository
   - Choose the repository you just created
   - Select "Docker" as the environment
   - Choose the "Standard" plan (minimum required for Minecraft)
   - Click "Create Web Service"

## Configuration

- The server is configured to use 1GB of RAM by default
- The world data is stored on a persistent disk of 10GB
- The server runs on port 25565 (default Minecraft port)
- Server properties can be modified in the `server.properties` file

## Connecting to the Server

1. Once deployed, Render will provide you with a URL
2. Use the IP address or domain provided by Render to connect to your server
3. The default port is 25565

## Important Notes

- The server runs Java Edition of Minecraft
- Make sure to use the correct version of Minecraft client to connect
- The server automatically accepts the Minecraft EULA
- World data is persistent across restarts due to the mounted volume

## Customization

You can customize the server by modifying:
- `server.properties` for Minecraft server settings
- `Dockerfile` for Java and server configuration
- `render.yaml` for Render.com deployment settings
