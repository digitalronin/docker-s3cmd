build:
	@docker build -t digitalronin/s3cmd .

run:
	@docker run --rm \
		--name s3cmd \
		-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
		-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
		-v $$(pwd):/opt \
		digitalronin/s3cmd \
		$(CMD)
