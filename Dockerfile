FROM node:10.13-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
ADD ./build .
RUN npm install http-server -g
EXPOSE 80
ENTRYPOINT [ "http-server", ".", "-p", "80" ]