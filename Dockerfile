FROM node:latest as builder

WORKDIR /app

COPY package.json ./

COPY . ./

RUN npm install --include=dev

# In fact this command does not do anything. More like a documentation 
EXPOSE 9876

CMD ["npm", "start"]