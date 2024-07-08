FROM node:18.19.1-alpine3.19
EXPOSE 8080
# ENV MONGO=true
WORKDIR /opt/server
COPY package.json /opt/server
COPY server.js /opt/server
RUN npm install
CMD ["node" , "server.js"]