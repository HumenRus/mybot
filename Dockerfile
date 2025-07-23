FROM busybox
CMD ["sh", "-c", "while true;do echo -e 'HTTP/1.1 200 OK\n\nVersion: v1.0.0' | nc -vpl 8080; done"]
EXPOSE 8080