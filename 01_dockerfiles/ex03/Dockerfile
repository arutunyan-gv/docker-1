FROM debian

MAINTAINER Bitter Aegon <baegon@student.21-school.ru>

EXPOSE 443 80 22

RUN apt-get update && \
	apt-get upgrade -y 

RUN apt-get install -y postfix

RUN apt-get install -y \
		git \
		curl \
		openssh-server \
		ca-certificates 

ADD https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh script.deb.sh

RUN EXTERNAL_URL="http://127.0.0.1:8022" apt-get install -yq gitlab-ce

RUN	bash script.deb.sh

RUN apt-get install gitlab-ce

RUN apt update # && \
	# apt install -y tzdata &&

RUN apt-get clean \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null

# build:
# docker build -t ex03 .

# run
# docker run -it --rm -p 8080:80 -p 8022:22 -p 8443:443 --privileged ex03