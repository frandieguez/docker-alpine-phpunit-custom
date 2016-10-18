# PHPUnit Docker Container.

[![Docker pull](https://img.shields.io/docker/pulls/frandieguez/phpunit.svg)](https://hub.docker.com/r/frandieguez/phpunit/) [![Docker pull](https://img.shields.io/docker/stars/frandieguez/phpunit.svg)](https://hub.docker.com/r/frandieguez/phpunit/) [![Github issues](https://img.shields.io/github/issues/frandieguez/docker-alpine-phpunit-custom.svg)](https://github.com/frandieguez/docker-alpine-phpunit-custom/issues) [![License](https://img.shields.io/github/license/frandieguez/docker-alpine-phpunit-custom.svg)](https://github.com/frandieguez/docker-alpine-phpunit-custom/blob/master/LICENSE)


[Docker](https://www.docker.com) container to install and run [PHPUnit](https://www.phpunit.de/).

# Customizations over oficial docker image
We have just added a bunch of new php extensions.

## Features

## Installation / Usage

1. Install the phpunit/phpunit container:

    ``` sh
	$ docker pull frandieguez/phpunit
	```

2. Create a phpunit.xml defining your tests suites.

    ``` xml
...
    ```

3. Run PHPUnit through the PHPUnit container:

    ``` sh
	$ docker run -v $(pwd):/app --rm phpunit/phpunit run
    ```
    or in shorthand add
    ``` sh
	$ sudo sh -c "printf \"#!/bin/sh
    export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
    docker run -v $(pwd):/app --rm phpunit/phpunit run \\\$@
    \" > /usr/local/bin/phpunit"
	$ sudo chmod +x /usr/local/bin/phpunit
    ```
    and then from host machine just
    ``` sh
	$ phpunit --version
    ```
