FROM python:3.9

WORKDIR /app

RUN apt-get update -y
RUN apt-get install mc -y
RUN yum install iputils
RUN apt cleal all -y
COPY . .

ENV PORT 2222
EXPOSE $PORT
#VOLUME ["/app/data"]


# CMD [ "python","demo.py" ]

