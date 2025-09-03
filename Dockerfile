FROM node:22-slim
RUN apt-get update && apt-get install -y 
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install
COPY . .
RUN npm run dev
EXPOSE 1337
CMD ["npm", "run", "dev"]
