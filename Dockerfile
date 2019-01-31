FROM node:11.6

# Install packages needed by Cypress.
RUN apt-get update && \
  apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb

# Print versions.
RUN node -v
RUN npm -v
RUN yarn -v

# Install Cypress so that the binary is cached.
RUN mkdir /opt/cypress
RUN chmod +rx /opt/cypress
WORKDIR /opt/cypress
ENV CYPRESS_CACHE_FOLDER /opt/cypress
RUN npm install cypress@3.1.5

ENV TZ "America/New_York"
