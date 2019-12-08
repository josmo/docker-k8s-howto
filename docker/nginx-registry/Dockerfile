FROM alpine:latest
RUN apk add --update nginx && mkdir /run/nginx/
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]

