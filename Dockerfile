# Starts the psyseal-scan MCP server (stdio), for MCP directories that build the server to list its tools.
# The scanner only reads files: inside this container it finds no agents and changes nothing.
FROM node:22-alpine
WORKDIR /app
COPY package.json ./
COPY scripts ./scripts
COPY src ./src
USER node
ENTRYPOINT ["node", "scripts/psyseal-scan.mjs", "mcp"]
