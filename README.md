# aws-cli
Utility Image for the AWS CLI

This is a Docker image for the AWS cli.

Using Docker for a tool means that you do not have to install the tool (and any dependencies that they might need).
This also makes it easier to support multiple versions of tools rather than managing them yourself.

The default home directory in this image is `/home/vizuri`.

If you include your existing AWS config directory as a volume when running this then the cli is ready for use otherwise you might have to enter your credentials info.

An example of running this image for a single AWS cli command follows.

`docker  run -v ~/.aws:/home/vizuri/.aws  vizuri/aws-cli s3 ls`

If you want to enter the shell when using image do this:

`docker  run -it -v ~/.aws:/home/vizuri/.aws --entrypoint=bash  vizuri/aws-cli`
