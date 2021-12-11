FROM node:8.12.0-alpine

WORKDIR /src

COPY ./src /src/src
COPY ./package.json ./yarn.lock /src/

# Delete the .npmrc file after the build; this will eliminate the possibility of copying it into the final container.
RUN yarn install --frozen-lockfile

CMD ["node", "/src/src/index.js"]
