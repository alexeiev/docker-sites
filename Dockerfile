FROM httpd:latest

LABEL MAINTAINER="AlexeievFA" 

COPY ./site/ /usr/local/apache2/htdocs/

WORKDIR /usr/local/apache2/htdocs/

VOLUME /usr/local/apache2/htdocs/

EXPOSE 80

CMD ["httpd-foreground"]