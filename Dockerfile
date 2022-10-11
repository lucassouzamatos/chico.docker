FROM bitwalker/alpine-erlang:24

MAINTAINER lucassouzamatos <lucas.ssouza.mmatos@gmail.com>

WORKDIR /.build

RUN apk add --no-cache --update-cache git make sudo
RUN git clone https://github.com/lucassouzamatos/chico.lang --depth 1 --branch 1.0.0
RUN cd chico.lang && make && make install
RUN cd $HOME && rm -rf /.build

WORKDIR ${HOME}

CMD ["bash"]
