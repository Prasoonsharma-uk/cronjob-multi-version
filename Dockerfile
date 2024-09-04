FROM busybox
COPY script/script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]