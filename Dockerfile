# POLYCLI BUILDER
FROM golang:1.23 as polycli
WORKDIR /tmp
RUN git clone https://github.com/0xPolygon/polygon-cli
RUN cd polygon-cli && make build

# ETH TOOLS
FROM golang:1.23 as ethtools
WORKDIR /tmp
RUN echo "Bump git 4"
RUN git clone https://github.com/xavier-romero/eth-bench.git

# FOUNDRY BUILDER
FROM ubuntu:22.04 as foundry
USER root
RUN apt-get update && apt-get install -y curl git
RUN curl -L https://foundry.paradigm.xyz | bash
RUN /root/.foundry/bin/foundryup
RUN cp /root/.foundry/bin/* /usr/local/bin/

# FINAL
FROM ubuntu:22.04 as final
USER root

RUN apt-get update \
    &&  apt-get install -y wget git build-essential cmake libboost-all-dev \
        curl python3-pip socat git htop net-tools tcpdump vim gettext-base \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Polygon CLI
COPY --from=polycli /tmp/polygon-cli/out/polycli /usr/local/bin/polycli
# Foundry
COPY --from=foundry /usr/local/bin/* /usr/local/bin/

## Eth Bench Tools
# requirements
COPY --from=ethtools /tmp/eth-bench/requirements.txt /tools/
COPY --from=ethtools /tmp/eth-bench/utils.py /tools/
COPY --from=ethtools /tmp/eth-bench/tx.py /tools/
COPY --from=ethtools /tmp/eth-bench/geth.py /tools/
COPY --from=ethtools /tmp/eth-bench/sc.py /tools/
COPY --from=ethtools /tmp/eth-bench/wallets.py /tools/
COPY --from=ethtools /tmp/eth-bench/bridge.py /tools/
RUN pip3 install -r /tools/requirements.txt
# tools
COPY --from=ethtools /tmp/eth-bench/bench.py /tools/bench
COPY --from=ethtools /tmp/eth-bench/tool_bridgespam.py /tools/bridgespam

COPY profiles.json.template /tools/profiles.json.template

RUN echo 'PATH=$PATH:/tools' >> /root/.bashrc
ENV PATH="$PATH:/tools"

ADD entrypoint.sh /entrypoint.sh
WORKDIR /tools
ENTRYPOINT [ "/entrypoint.sh" ]