FROM rails:onbuild

RUN set -x; \
  rails g blazer:install && \
  rake db:migrate

ENV BLAZER_DATABASE_URL **None**
ENV BLAZER_USERNAME admin
ENV BLAZER_PASSWORD admin
