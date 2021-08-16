# Compiler image
# -------------------------------------------------------------------------------------------------
FROM ubuntu:20.04 AS compiler

WORKDIR /root

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt update && \
    apt install -y libsodium-dev cmake g++ git build-essential && \
    git clone https://github.com/madMAx43v3r/chia-plotter.git  && \
    cd chia-plotter && \
    git submodule update --init && \
    /bin/sh ./make_devel.sh

# Runtime image
# -------------------------------------------------------------------------------------------------
FROM ubuntu:20.04 AS runtime

WORKDIR /root

RUN apt update && \
    apt install -y libsodium-dev

COPY --from=compiler /root/chia-plotter/build /usr/lib/chia-plotter
RUN ln -s /usr/lib/chia-plotter/chia_plot /usr/bin/chia_plot

ENTRYPOINT ["/usr/bin/chia_plot"]
