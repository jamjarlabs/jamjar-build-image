FROM emscripten/emsdk:3.1.1

RUN apt-get update
RUN apt-get install clang-11 clang-tidy-11 clang-format-11 cmake libsdl2-dev -y

RUN ln -sf /usr/bin/clang-11 /usr/bin/clang && \
    ln -sf /usr/bin/clang-tidy-11 /usr/bin/clang-tidy && \
    ln -sf /usr/bin/clang-format-11 /usr/bin/clang-format

# Update cmake
RUN apt-get remove --purge --auto-remove cmake -y && \
    apt-get update && \
    apt-get install -y software-properties-common lsb-release && \
    apt-get clean all

RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null

RUN apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"

RUN apt-get update && \
    apt-get install cmake -y

WORKDIR /workspace

ENTRYPOINT /bin/bash
