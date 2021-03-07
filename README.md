# openjdk-docker
A slim base version image for openjdk

# How to use this `Dockerfile`

```shell

$ docker build -f Dockerfile -t test:openjdk .
$ docker run --name test -d -p 8080:8080 -v $PWD:/opt/app test:openjdk

```

