build:
	@docker build -t s3cmd_img .

run:
	@docker run --rm \
		--name s3cmd \
		-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
		-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
		-v $$(pwd):/opt \
		s3cmd_img \
		$(CMD)
