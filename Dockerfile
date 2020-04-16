FROM openjdk:7

RUN apt-get install curl unzip

ARG EPUBCHECK_VERSION=4.2.2
WORKDIR /app
RUN curl -L -O "https://github.com/w3c/epubcheck/releases/download/v${EPUBCHECK_VERSION}/epubcheck-${EPUBCHECK_VERSION}.zip"
RUN unzip "epubcheck-${EPUBCHECK_VERSION}.zip"
RUN rm -rf "epubcheck-${EPUBCHECK_VERSION}.zip"

ENV DATA_PATH=/data
WORKDIR ${DATA_PATH}
VOLUME ${DATA_PATH}

ENV JAR_PATH="/app/epubcheck-${EPUBCHECK_VERSION}/epubcheck.jar"
RUN echo '#!/bin/bash\n java -jar ${JAR_PATH} "${@:1}"' > /app/entrypoint.sh
RUN cat /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT [ "/app/entrypoint.sh" ]
