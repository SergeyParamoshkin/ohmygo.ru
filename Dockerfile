FROM hugomods/hugo:base

WORKDIR /application
COPY . /application/
RUN hugo 