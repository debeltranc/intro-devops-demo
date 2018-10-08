FROM node:10.11.0

RUN npm install -g @angular/cli

ADD . /intro-devops-demo

WORKDIR /intro-devops-demo

RUN npm install

EXPOSE 4200

ENTRYPOINT ["ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]
