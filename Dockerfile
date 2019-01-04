FROM node:8.15.0-alpine

RUN npm install -g icon-font-generator@v2.1.9

ENTRYPOINT ["icon-font-generator"]
CMD ["$*"]
