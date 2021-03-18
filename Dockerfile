FROM registry.aptero.co/projet-linux
COPY ./html_root/ /~/html_root/
COPY ./log_dump.sh/ /~/
COPY ./log_filter.sh/ /~/
COPY ./log_format.sh/ /~/
COPY ./install_nginx_1.sh/ /~/
COPY ./install_nginx_2.sh/ /~/