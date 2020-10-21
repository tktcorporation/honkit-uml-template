FROM honkit/honkit

RUN apt-get update
RUN apt-get install -y build-essential openjdk-8-jre graphviz

WORKDIR /doc

COPY ./package.json ./package.json
RUN yarn

COPY . .

CMD [ "npx honkit build" ]
