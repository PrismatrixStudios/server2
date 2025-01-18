FROM openjdk:17-slim

WORKDIR /minecraft

# Install required packages
RUN apt-get update && \
    apt-get install -y wget netcat-traditional && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download server jar
RUN wget https://piston-data.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar -O server.jar

# Accept EULA
RUN echo "eula=true" > eula.txt

# Copy server properties
COPY server.properties .

# Add health check script
COPY healthcheck.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/healthcheck.sh

# Expose minecraft server port
EXPOSE 25565

# Start the server
CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar", "nogui"]
