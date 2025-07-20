FROM hugomods/hugo:debian-ci-0.148.1 AS build 

WORKDIR /application
COPY . /application/
RUN ls -la /application/themes/hugo-book/
RUN hugo list all
RUN hugo build --gc


FROM nginx:latest AS app  
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /application/public /usr/share/nginx/html/application/
