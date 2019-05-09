# Example host distro
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git cmake gcc make g++ libboost-all-dev

RUN git clone --depth=10 https://github.com/revbayes/revbayes.git revbayes

RUN cd /revbayes/projects/cmake/ && ./build.sh && cd /../../../

RUN cp revbayes/projects/cmake/rb bin/. && \
    rm -r revbayes/

# outsider *requires* working_dir
RUN mkdir /working_dir
WORKDIR /working_dir
