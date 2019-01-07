FROM alpine

RUN mkdir /build
WORKDIR /build

RUN apk add --no-cache \
    boost-dev \
    cmake \
    curl-dev \
    g++ \
    gcc \
    git \
    make \
    python3-dev \
    sqlite-dev \
    zlib-dev

ADD . .

RUN cmake -DCMAKE_BUILD_TYPE=Release .
RUN make
