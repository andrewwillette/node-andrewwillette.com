FROM node:17.4.0

COPY --chown=node:node . .
EXPOSE 80
ENV NODE_OPTIONS="--openssl-legacy-provider"
RUN npm install && npm run build
#CMD ["nohup","npm","run","start-prod"]
#CMD npm run start-prod
