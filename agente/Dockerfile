FROM alpine:latest
# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 openssh openjdk8-jre git && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools Calculator pytest flask
COPY wiremock-jre8-standalone-2.33.1.jar /
COPY mappings /tmp/
COPY mappings/sqtr64.json /tmp/mappings/
RUN chmod -R 777 /tmp/mappings
COPY start.sh /
CMD ["/start.sh"]