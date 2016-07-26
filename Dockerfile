FROM filipecabaco/jre:8

ENV LOCAL /usr/local
ENV PATH ${PATH}:${LOCAL}
ENV LEIN_ROOT 1

RUN apk add --update tar gnupg bash openssl && rm -rf /var/cache/apk/*

ADD https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein ${LOCAL}
RUN chmod a+x ${LOCAL}/lein

RUN lein repl
