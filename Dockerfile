FROM node:14.16.0-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV API_URL=http://api.myapp.com
EXPOSE 3000
#Shell Form inside /bin/sh it is running
# CMD npm start 

#exec Form
CMD ["npm", "start"]
ENTRYPOINT ["npm", "start"]
