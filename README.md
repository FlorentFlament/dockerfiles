# dockerfiles
Collection of dockerfiles

## sc68

### Building the sc68 compilation image

```
$ docker build -f sc68-build-ubuntu1904.Dockerfile -t fflament/sc68-build-ubuntu1904 .
```

### Building sc68

In the `sc68-code` directory:

```
$ docker run --rm -v /usr/local:/usr/local -v ${PWD}:/work -w /work fflament/sc68-build-ubuntu1904 sh -c "tools/svn-bootstrap.sh && ./configure && make install"
```
