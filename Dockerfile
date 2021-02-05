# Dockerfile from prestashop base with XDEBUG installed and enabled
FROM prestashop/prestashop:latest
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN echo 'zend_extension=xdebug.so' >> /usr/local/etc/php/php.ini
RUN echo '[XDebug]' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.mode=debug' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.start_with_request=yes' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.client_port=9000' >> /usr/local/etc/php/php.ini
