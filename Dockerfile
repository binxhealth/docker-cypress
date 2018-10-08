FROM cypress/base:10

RUN npm install cypress

ENV TZ "America/New_York"


