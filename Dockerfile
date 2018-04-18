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
COPY cron /etc/cron.d
RUN chmod +x /etc/cron.d/cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

COPY run.sh /app
RUN chmod +x /app/run.sh

ENTRYPOINT ["/app/run.sh"]

