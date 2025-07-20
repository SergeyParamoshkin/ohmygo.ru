FROM hugomods/hugo:base AS build 

WORKDIR /application
COPY . /application/
RUN hugo build 


FROM nginx:latest AS app  
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=build /application/public /usr/share/nginx/html/application/
