# Check out https://hub.docker.com/_/node to select a new base image
FROM node:12-slim


# Create app directory (with user `node`)
RUN mkdir -p /app

COPY . /app

WORKDIR /app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN npm install

RUN npm install -g parcel-bundler

EXPOSE ${PORT}
ENTRYPOINT [ "npm", "run" ]
