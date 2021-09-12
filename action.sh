docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --rm -i ultroid
