# go-loadlocation-docker
The idea of this example was to show problems with usage of time.LocalLocation in docker container.
You can read complete blog post here [http://pouzek.si/blog/go-loadlocation-docker/](http://pouzek.si/blog/go-loadlocation-docker/)

## Installing

To install example, install Go 1.9+ and run `go get`:

```sh
$ go get github.com/mitjaziv/go-loadlocation-docker
```

This will install the `go-loadlocation-docker` in to your `$GOBIN` path.

Example should be compatible also with older versions of Go.


## Running

To start example locally, run following:
```sh
$ go-loadlocation-docker
```

## Docker

For docker test you need to have installed docker on your machine.

To build docker container, run following:
```sh
$ cd $GOPATH/src/github.com/mitjaziv/go-loadlocation-docker
$ make docker
```

To start built container, run following:
```sh
$ docker run go-loadlocation-docker
```