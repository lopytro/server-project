FROM node:22-bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends fonts-dejavu-core && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
ENV HOST=0.0.0.0 PORT=3001 PDF_FONT=/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf
EXPOSE 3001
CMD ["node","backend/server.js"]
