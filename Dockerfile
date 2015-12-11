FROM rails:onbuild

RUN set -x; \
  rails g blazer:install && \
  rake db:migrate

ENV BLAZER_DATABASE_URL	**main db to analyze**
ENV BLAZER_CATALOG_DATABASE_URL **add another db**
ENV BLAZER_USERNAME admin
ENV BLAZER_PASSWORD admin
