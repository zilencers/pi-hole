FROM quay.io/fedora/fedora:38-x86_64
RUN dnf -y install curl bind-utils git dialog iproute newt procps-ng chkconfig xterm tzdata NetworkManager nmcli
&& ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
COPY setup.sh /usr/local/bin/setup.sh
RUN /usr/local/bin/setup.sh
CMD [ "/usr/sbin/init" ]

