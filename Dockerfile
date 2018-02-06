FROM ubuntu

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    libssl-dev

RUN git clone https://github.com/rpoisel/paho.mqtt.c.git
RUN cd paho.mqtt.c \
    make && make install

EXPOSE 1883

RUN cd
COPY . /
WORKDIR /
RUN make

CMD ["./main"]