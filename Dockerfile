FROM rocketchat/rocket.chat

ENV MONGO_OPLOG_URL=mongo://mongo:27017/local
COPY ./scripts/ .

CMD "./start.sh"
