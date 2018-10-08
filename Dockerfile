FROM cypress/base:10

RUN npm install -g cypress

ENV TZ "America/New_York"


