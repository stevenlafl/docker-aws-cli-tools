build-cli:
	docker build -t stevenlafl/aws-cli-tools \
        -f ./docker-src/aws-cli-tools/Dockerfile \
        docker-src/aws-cli-tools
push-cli:
	docker push stevenlafl/aws-cli-tools
