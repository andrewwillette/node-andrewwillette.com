FROM node:14.15.4

COPY --chown=node:node . .
EXPOSE 80
ENV NODE_OPTIONS="--max-old-space-size=1048"
RUN npm install && npm run build
CMD ["npm","run","start-prod"]
