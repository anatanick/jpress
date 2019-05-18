FROM fuhai/jpress-base:v1.2
LABEL maintainer="Michael Yang<fuhai999@gmail.com>"

WORKDIR /opt/jpress

COPY ./starter/target/starter-2.0/* /opt/jpress/

RUN chmod +x /opt/jpress/jpress.sh &&  \
    rm -rf /opt/jpress/jpress.bat && \
    rm -rf /opt/jpress/config/undertow.txt && \
    rm -rf /opt/jpress/config/jboot.properties && \
    rm -rf /opt/jpress/config/install.lock

EXPOSE 8080

CMD ["/opt/jpress/jpress.sh", "start"]