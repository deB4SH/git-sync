ARG REPOSITORY="docker.io"
FROM ${REPOSITORY}/library/ubuntu:latest
RUN useradd -u 65533 syncuser
FROM ${REPOSITORY}/ubuntu/git-sync:4.5-24.04_stable
COPY --from=0 /etc/passwd /etc/passwd
