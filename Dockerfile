FROM fogfish/erlang-alpine-rt

RUN apk update && apk add zip

COPY _build/default/rel/serverless /fun/serverless
COPY rel/index.js /fun/

COPY template /template
