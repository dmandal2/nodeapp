FROM docker.io/library/node:16@sha256:fddc8c24ce0bce462d5050667a80a3681c9c6f9d645c151d5a85e968b21e167a

COPY . .
RUN npm install
RUN npm run build

CMD ["npm", "start"]

