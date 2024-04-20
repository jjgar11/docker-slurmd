FROM gromr1/slurmbase

ADD scripts/start.sh /root/start.sh
RUN chmod +x /root/start.sh

ADD etc/supervisord.d/slurmd.conf /etc/supervisor/conf.d/slurmd.conf

CMD ["/bin/bash","/root/start.sh"]
