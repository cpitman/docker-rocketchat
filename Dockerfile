FROM rocketchat/rocket.chat

ENV MONGO_OPLOG_URL=mongo://mongo:27017/local
COPY ./scripts/ .
RUN chown 1000:1000 * && chmod +x start.sh

CMD "./start.sh"
