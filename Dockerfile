FROM python:3.8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y vim \
                    default-libmysqlclient-dev \
                    mariadb-client \
                    tmux

RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz && \
  tar -xvzf ta-lib-0.4.0-src.tar.gz && \
  cd ta-lib/ && \
  ./configure --prefix=/usr && \
  make && \
  make install
RUN pip install TA-Lib
RUN rm -R ta-lib ta-lib-0.4.0-src.tar.gz

RUN apt-get install -y cabextract libfontenc1 libmspack0 xfonts-encodings xfonts-utils
RUN wget http://ftp.jp.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8_all.deb
RUN dpkg -i ttf-mscorefonts-installer_3.8_all.deb
RUN rm ttf-mscorefonts-installer_3.8_all.deb

ADD requirements.txt ./
RUN pip install -r requirements.txt
RUN pip install --upgrade matplotlib