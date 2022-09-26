FROM postgres:14.5-bullseye
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get -y install sudo
RUN useradd admin && echo "admin:iu6-magisters" | chpasswd && adduser admin sudo
RUN apt-get -y install python3 python3-pip
COPY ./requirements.txt /requirements.txt
RUN python3 -m pip install -r /requirements.txt