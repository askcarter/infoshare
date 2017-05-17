FROM node:boron

# Create app directory
RUN mkdir -p /usr/infoshare
WORKDIR /usr/infoshare

# Install app dependencies
#COPY package.json /usr/infoshare
ADD . /usr/infoshare

RUN npm install grpc

CMD [ "node", "server.js" ]

