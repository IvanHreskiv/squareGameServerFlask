FROM node
MAINTAINER IvanHreskiv
EXPOSE 3000
COPY . /app
WORKDIR /app
#RUN git clone https://github.com/IvanHreskiv/SquareGameClient.git client
#RUN mv -v client/* .
RUN npm install --loglevel=error

CMD npm start
