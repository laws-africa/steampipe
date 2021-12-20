# steampipe

This runs [steampipe](https://steampipe.io/) in a Docker container in service mode on port 9193.

The AWS credentials and postgres password are specified using the docker-compose `.env` file,
which is not included in this repo.

## Deploying

1. Clone this repo
2. Run `docker-compose start`
