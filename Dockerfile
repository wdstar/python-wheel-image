FROM alpine

# python3 includes pip.
RUN apk update && \
    apk add py2-pip python3 && \
    pip install wheel twine && \
    pip3 install wheel twine && \
    rm -rf /var/cache/apk/*
