# creates a statically linked executable.
build:
	./scripts/build.sh go-loadlocation-docker

# cleans up any binaries
clean:
	@rm -rf out

# builds the docker
docker: build-in-docker
	@docker build -f Dockerfile.release -t "go-loadlocation-docker" .
	@echo "Built Docker image \"go-loadlocation-docker\""

# build-in-docker builds the package within a docker container and saves it to the ./out directory
build-in-docker:
	@docker build -f Dockerfile.build -t "go-loadlocation-docker-build:make" .
		@docker run --net=none -v "$(shell pwd)/out:/out" -v "$(shell pwd):/go/src/github.com/mitjaziv/go-loadlocation-docker" "go-loadlocation-docker-build:make"
