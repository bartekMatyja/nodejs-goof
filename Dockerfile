FROM node:20-alpine

RUN mkdir -p /usr/src/goof /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm install

EXPOSE 22
EXPOSE 3001
EXPOSE 9229

ENTRYPOINT ["npm", "start"]
