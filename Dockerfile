FROM cypress/base:10

RUN mkdir /opt/cypress
RUN chmod +rx /opt/cypress
WORKDIR /opt/cypress
ENV CYPRESS_CACHE_FOLDER /opt/cypress
RUN npm install cypress

ENV TZ "America/New_York"
