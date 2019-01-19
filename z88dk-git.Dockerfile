# Add git to the z88dk docker image `fflament/z88dk`

FROM fflament/z88dk:latest

RUN apk add --no-cache git
