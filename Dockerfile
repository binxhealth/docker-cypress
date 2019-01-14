FROM node:11

RUN apt-get update && \
  apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb

# versions of local tools
RUN node -v
# NPM version should already be pretty new (> 6.4.0)
RUN npm -v
RUN yarn -v

RUN mkdir /opt/cypress
RUN chmod +rx /opt/cypress
WORKDIR /opt/cypress
ENV CYPRESS_CACHE_FOLDER /opt/cypress
RUN npm install cypress@3.1.4

ENV TZ "America/New_York"
