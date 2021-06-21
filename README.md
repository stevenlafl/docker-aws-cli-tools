# Docker image to run known AWS CLI tools (SAM and AWS)

Use this image to run AWS CLI tools.
Setting the `--entrypoint` sets which command will run inside the container.
It takes any arguments any of the AWS CLIs do.

**Included Tools**

- `aws`
- `sam`

## Usage example

You might want to volume mount your `.aws` credentials file and the current working directory,
so you can use it as you would the actual CLI.

`docker run -it -v ~/.aws:/root/.aws -v $(pwd):/aws --entrypoint <command> stevenlafl/aws-cli-tools <arguments>`

## Tips:

If you'd like to use docker instead of installing the CLI, but still use the same commands,
you might want to pull down this repo somewhere and add to your `.bashrc`:

```
alias aws=/full/path/to/bin/aws
alias sam=/full/path/to/bin/sam
```
