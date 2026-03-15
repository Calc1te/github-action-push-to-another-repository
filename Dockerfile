FROM alpine:3.20

RUN apk update && apk add --no-cache git git-lfs openssh-client rsync curl jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
