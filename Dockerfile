FROM rails:onbuild

RUN set -x; \
  rails g blazer:install --skip && \
  rake db:migrate

ENV BLAZER_DATABASE_URL	**main db to analyze**
ENV BLAZER_CATALOG_DATABASE_URL **add another db**
ENV BLAZER_USERNAME admin
ENV BLAZER_PASSWORD admin

ENV RAILS_ENV production

## for mounting the db files on the host or in another volume
VOLUME /usr/src/app/db
