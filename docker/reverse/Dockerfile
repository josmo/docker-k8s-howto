FROM nginx:1.17
COPY nginx.conf /etc/nginx/nginx.conf
ENV API_ENDPOINT http://google.com:80
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
