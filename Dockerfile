FROM rails:onbuild

RUN set -x; \
  rails g blazer:install && \
  rake db:migrate

ENV BLAZER_DATABASE_URL postgres://user:password@hostname:5432/database
ENV BLAZER_USERNAME admin
ENV BLAZER_PASSWORD admin

EXPOSE 3000
