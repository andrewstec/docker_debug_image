## Pre-compiled Linux distributions with pre-installed Node JS, Java, Python, etc. are available.
## https://hub.docker.com/search/?type=image
FROM alpine

WORKDIR /gradingApp

## Install any dependencies needed to mark your code using a package manager compatible with your Linux distribution
## RUN apt-get update
## RUN apt-get install git
RUN echo 'hello world!'

COPY exampleScript/helloWorld.sh /gradingApp/helloWorld.sh

## Set chmod -R 777 on your work directory to ensure that AutoTest can work read the data
RUN chmod -R 777 .

## CMD will trigger once student code is pushed to a repository.
CMD ["/app/helloWorld.sh"]
