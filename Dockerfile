#use node base image
FROM node:8-onbuild

LABEL maintainer "osher.levi7@gmail.com"

# Set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

EXPOSE 8000
