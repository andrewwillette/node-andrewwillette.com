FROM node:17.4.0

COPY --chown=node:node . .
EXPOSE 80
ENV NODE_OPTIONS="--openssl-legacy-provider --max_old_space_size=5055"
RUN npm install && npm run build
CMD ["npm","run","start-prod"]
