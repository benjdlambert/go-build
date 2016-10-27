# go-build
Dockerfile to Build and Test a Go Application


### Usage
```sh
docker run -v "$(pwd):/go/src/github.com/blam/something" blam/go-build build
```

```sh
docker run -v "$(pwd):/go/src/github.com/blam/something" blam/go-build test
```
