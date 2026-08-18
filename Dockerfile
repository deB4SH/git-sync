FROM ubuntu:latest
RUN useradd -u 65533 syncuser
FROM docker.io/ubuntu/git-sync:4.5-24.04_stable
COPY --from=0 /etc/passwd /etc/passwd
