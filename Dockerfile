# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . .
RUN apk add --no-cache bash

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN chmod +x bin/entrypoint.sh
RUN chmod +x bin/encrypt.sh
RUN chmod +x bin/decrypt.sh
ENTRYPOINT ["bin/entrypoint.sh"]