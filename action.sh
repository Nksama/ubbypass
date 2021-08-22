git clone -b dev https://github.com/TechiError/ubiquitous-octo-goggles-ultroid ultroid
cp ultroid/.env
cd ultroid
ls
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --rm -i ultroid
