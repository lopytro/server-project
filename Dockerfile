FROM node:22-bookworm-slim
WORKDIR /app
COPY . .
RUN npm install
ENV HOST=0.0.0.0
ENV PORT=3001
EXPOSE 3001
CMD ["node", "start.js"]
