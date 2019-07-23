FROM node:12.6.0-alpine
MAINTAINER Justin Bell <4Justin.Bell@gmail.com>

RUN mkdir -p /usr/api
COPY . /usr/api
WORKDIR /usr/api
RUN npm install --production

ENV PORT 3000
EXPOSE  $PORT

CMD ["npm", "start"]