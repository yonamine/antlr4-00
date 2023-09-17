

- If you have already created a Docker Image and a Docker Container, just to start a Docker container
- If you have started a Docker container but you haven't closed it, jump to attach a Docker container

Clone this project
==================

```bash
$ git clone <PROJECT>
$ cd <PROJECT>
```

How to build a Docker image
===========================

```bash
$ docker build -t antlr4-00 .
```

How to create a Docker image from a Docker container
===================================================

```bash
$ docker run --name antlr4-00-container-00 -t antlr4-00
```

How to start a Docker container
===================================================

```bash
$ docker start antlr4-00-container-00
```

How to start a Docker container
===================================================

```bash
$ docker attach antlr4-00-container-00
```


- From here, you can start your project.

