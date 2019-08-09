FROM openjdk:8
COPY sky_server/ sky_server/
WORKDIR sky_server/
RUN useradd -ms /bin/bash minecraft && \
    chown -R minecraft:minecraft /sky_server && \
    chmod u+x ./Install.sh && \
    chmod u+x ./ServerStart.sh

USER minecraft

RUN ./Install.sh

CMD ./ServerStart.sh
