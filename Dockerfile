FROM busybox
COPY script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
