FROM node:9.5

RUN mkdir -p /notesapp
COPY . ./notesapp


WORKDIR /notesapp

# ENV PORT="3000"
# ENV REST_LISTEN="0.0.0.0"

RUN apt-get update -y  \
    && apt-get -y install curl python build-essential git ca-certificates  \
    && npm install --unsafe-perm 

EXPOSE 3000
CMD npm start