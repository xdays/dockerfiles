FROM ubuntu:18.04 as builder
RUN apt update && apt install -y build-essential git perl libssl-dev
RUN git clone https://github.com/wg/wrk.git && \
    cd wrk && make

FROM ubuntu:18.04
COPY --from=builder /wrk/wrk /bin/
ENTRYPOINT ["wrk"]
