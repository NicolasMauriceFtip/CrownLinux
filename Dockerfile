FROM registry.aptero.co/projet-linux
RUN mkdir ~/CrownLinux/html_root/
COPY ./html_root/ /~/CrownLinux/html_root/
COPY ./log_dump.sh/ /~/CrownLinux/
COPY ./log_filter.sh/ /~/CrownLinux/
COPY ./log_format.sh/ /~/CrownLinux/
COPY ./log_move.sh/ /~/CrownLinux/
COPY ./install_nginx_1.sh/ /~/CrownLinux/
COPY ./install_nginx_2.sh/ /~/CrownLinux/
COPY ./install_cron.sh/ /~/CrownLinux/
RUN cd ~/CrownLinux
CMD bash ./install_nginx_1.sh
CMD bash ./install_nginx_2.sh
CMD bash ./install_cron.sh