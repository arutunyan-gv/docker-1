# ex00

FROM alpine

MAINTAINER Bitter Aegon <baegon@student.21-school.ru>

RUN apk update && \
	apk upgrade

RUN apk add vim

ENTRYPOINT vim

# build:
# docker build --tag ex00 .

# run:
# docker run -it --rm ex00