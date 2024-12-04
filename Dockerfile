# POLYCLI BUILDER
FROM golang:1.23 as polycli
WORKDIR /tmp
RUN git clone https://github.com/0xPolygon/polygon-cli
RUN cd polygon-cli && make build

# ETH TOOLS
FROM golang:1.23 as ethtools
WORKDIR /tmp
RUN echo "Bump git 1"
RUN git clone https://github.com/xavier-romero/eth-bench.git

# FOUNDRY BUILDER
FROM ubuntu:22.04 as foundry
USER root
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl git
RUN curl -L https://foundry.paradigm.xyz | bash
RUN /root/.foundry/bin/foundryup
RUN cp /root/.foundry/bin/* /usr/local/bin/


# FINAL
FROM ubuntu:22.04 as final
USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive apt-get install -y wget git build-essential \
        cmake libboost-all-dev curl python3-pip socat git htop net-tools tcpdump \
        vim gettext-base ansible jq bc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Polygon CLI
COPY --from=polycli /tmp/polygon-cli/out/polycli /usr/local/bin/polycli
# polycli retest output
ADD files/polycli-retest-20241203.json /files/polycli-retest.json
# Foundry
COPY --from=foundry /usr/local/bin/* /usr/local/bin/
# go-ethereum fuzzed
ADD files/FuzzEVMRunner /files/FuzzEVMRunner

## Eth Bench Tools
# requirements
COPY --from=ethtools /tmp/eth-bench/requirements.txt /tools/
RUN pip3 install -r /tools/requirements.txt

COPY --from=ethtools /tmp/eth-bench/utils.py /tools/
COPY --from=ethtools /tmp/eth-bench/tx.py /tools/
COPY --from=ethtools /tmp/eth-bench/geth.py /tools/
COPY --from=ethtools /tmp/eth-bench/sc.py /tools/
COPY --from=ethtools /tmp/eth-bench/wallets.py /tools/
COPY --from=ethtools /tmp/eth-bench/bridge.py /tools/
COPY --from=ethtools /tmp/eth-bench/scripted /files/scripted
COPY --from=ethtools /tmp/eth-bench/contracts /tools/contracts
# tools
COPY --from=ethtools /tmp/eth-bench/bench.py /tools/bench
COPY --from=ethtools /tmp/eth-bench/tool_bridgespam.py /tools/bridgespam
COPY --from=ethtools /tmp/eth-bench/tool_scripted.py /tools/scripted

COPY profiles.json.template /tools/profiles.json.template

# scripts
COPY --chmod=755 scripts/run-fuzzed.sh /scripts/run-fuzzed
COPY --chmod=755 scripts/run-zktv.sh /scripts/run-zktv

# Ansible related content
COPY files/ansible /ansible
RUN mkdir -p /etc/ansible && echo "localhost ansible_connection=local" > /etc/ansible/hosts

# Save full repos, as they could be usefull
COPY --from=ethtools /tmp/eth-bench /repos/eth-bench
COPY --from=polycli /tmp/polygon-cli /repos/polygon-cli

RUN echo 'PATH=$PATH:/tools:/scripts' >> /root/.bashrc
# ENV PATH="$PATH:/tools:/scripts"

ADD entrypoint.sh /entrypoint.sh
WORKDIR /tools
ENTRYPOINT [ "/entrypoint.sh" ]