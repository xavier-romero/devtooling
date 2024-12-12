# POLYCLI BUILDER
FROM golang:1.23 as polycli
WORKDIR /tmp
RUN git clone https://github.com/0xPolygon/polygon-cli
RUN cd polygon-cli && make build

# ETH TOOLS
FROM golang:1.23 as ethtools
WORKDIR /tmp
RUN echo "Bump git 10"
RUN git clone https://github.com/xavier-romero/eth-bench.git
RUN cd eth-bench && git submodule init && git submodule update

# FOUNDRY BUILDER
FROM ubuntu:22.04 as foundry
USER root
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl git
RUN curl -L https://foundry.paradigm.xyz | bash
# Nightly build taken on 2024/12/04
RUN /root/.foundry/bin/foundryup --version nightly-805d7cee81e78e9163b8ce3d86a0c3beb39772d4
RUN cp /root/.foundry/bin/* /usr/local/bin/


# FINAL
FROM ubuntu:22.04 as final
USER root

# Needs to be done before adding Kurtoisis repo
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo "deb [trusted=yes] https://apt.fury.io/kurtosis-tech/ /" | tee /etc/apt/sources.list.d/kurtosis.list

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    &&  DEBIAN_FRONTEND=noninteractive apt-get install -y wget git build-essential \
        cmake libboost-all-dev curl python3-pip socat git htop net-tools tcpdump \
        vim gettext-base ansible jq bc docker.io docker-buildx telnet \
        kurtosis-cli=1.4.1 sudo \
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
COPY --from=ethtools /tmp/eth-bench/requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt && rm /tmp/requirements.txt
COPY profiles.json.template /tmp/profiles.json.template
COPY --from=ethtools /tmp/eth-bench/scripted /files/scripted

# scripts
COPY --chmod=755 scripts/run-fuzzed.sh /scripts/run-fuzzed
COPY --chmod=755 scripts/run-zktv.sh /scripts/run-zktv

# Ansible related content
COPY files/ansible /ansible
RUN mkdir -p /etc/ansible && echo "localhost ansible_connection=local" > /etc/ansible/hosts

# Save full repos, as they could be usefull
COPY --from=ethtools /tmp/eth-bench /repos/eth-bench
COPY --from=polycli /tmp/polygon-cli /repos/polygon-cli

# Set some links for easier usage
RUN ln -s /repos/eth-bench/bench.py /scripts/bench
RUN ln -s /repos/eth-bench/tool_bridgespam.py /scripts/bridgespam
RUN ln -s /repos/eth-bench/tool_scripted.py /scripts/scripted
RUN ln -s /repos/eth-bench/tool_txspam.py /scripts/txspam
RUN ln -s /repos/eth-bench/tool_txtest.py /scripts/txtest
RUN ln -s /repos/eth-bench/tool_sc_chaos_monkey.py /scripts/sc_chaos

# set path
RUN echo 'PATH=$PATH:/scripts' >> /root/.bashrc

# Create folder for some logs
RUN mkdir -p /logs

# Entrypoint
ADD entrypoint.sh /entrypoint.sh

WORKDIR /scripts
ENTRYPOINT [ "/entrypoint.sh" ]
