FROM node:16-alpine

ENV PORT=4000

WORKDIR /usr/src/app

# Install dependencies
# COPY package.json /usr/src/app/
COPY . /usr/src/app/
RUN npm install

# Copy source
# COPY src /usr/src/app/src

EXPOSE $PORT
CMD [ "npm", "start" ]