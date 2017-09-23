FROM ethereum/client-go

# Install solc compiler
RUN \
  apk --no-cache --update add build-base cmake boost-dev git                                                && \
  sed -i -E -e 's/include <sys\/poll.h>/include <poll.h>/' /usr/include/boost/asio/detail/socket_types.hpp  && \
  git clone --depth 1 --recursive -b release https://github.com/ethereum/solidity                           && \
  cd /solidity && cmake -DCMAKE_BUILD_TYPE=Release -DTESTS=0 -DSTATIC_LINKING=1                             && \
  cd /solidity && make solc && install -s  solc/solc /usr/bin                                               && \
  cd / && rm -rf solidity                                                                                   && \
  apk del sed make cmake gcc g++ musl-dev curl-dev boost-dev                                 && \
  rm -rf /var/cache/apk/*

# Install ruby and ruby-bundler
RUN apk update && apk upgrade && apk add curl wget bash ruby ruby-dev build-base libxml2-dev libxslt-dev ruby-bundler ruby-irb ruby-rdoc

# Clean APK cache
RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["geth"]

