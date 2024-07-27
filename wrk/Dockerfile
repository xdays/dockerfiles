FROM ubuntu:22.04 as builder
RUN apt update -qq && apt install -qq -y build-essential git perl libssl-dev
RUN git clone https://github.com/wg/wrk.git && \
    cd wrk && make

FROM ubuntu:22.04
RUN apt update -qq && apt install -qq -y netbase && \
    rm -rf /var/lib/apt/lists/*
COPY --from=builder /wrk/wrk /bin/
ENTRYPOINT ["wrk"]
