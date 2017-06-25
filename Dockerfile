FROM node:8-alpine
#create application folder
RUN mkdir -p /usr/src/dockernode
RUN mkdir -p /usr/src/dockernode/app
#specify work direcotry
WORKDIR /usr/src/dockernode

#Copy sorce code to docker container
COPY package.json /usr/src/dockernode
COPY yarn.lock /usr/src/dockernode
COPY app /usr/src/dockernode/app
#install dependcies
RUN yarn install

#expose application ports
EXPOSE 3003
