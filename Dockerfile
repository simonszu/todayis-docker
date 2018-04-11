FROM ruby:2.5

ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN gem install date
RUN gem install twitter

RUN apt-get update \
    && apt-get install -y cron \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
COPY todayis.rb /app
COPY todayis-cron /etc/cron.d

COPY run.sh /app
RUN chmod +x /app/run.sh

ENTRYPOINT ["/app/run.sh"]

