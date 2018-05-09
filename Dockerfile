FROM fogfish/erlang-alpine-rt

RUN apk update && apk add zip

COPY _build/default/rel/serverless-runtime /fun/serverless-runtime
COPY rel/index.js /fun/

COPY template /template
