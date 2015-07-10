Lightweight Docker image for s3cmd
==================================

This image is base on Alpine Linux, to try and make it as small as possible.

## Usage

    make build

    export AWS_ACCESS_KEY_ID=<your access key>
    export AWS_SECRET_ACCESS_KEY=<your secret key>

    make run CMD='s3cmd ls s3://<your bucket>'

See the Makefile for how this works.

NB: When run via 'make run' the current working directory is mapped to /opt in the docker container. This means you can only download (s3cmd get ...) files to the current working directory, and you will only be able to upload (s3cmd put ...) files from the working directory.

