# PHPUnit Docker Container.

[![Docker pull](https://img.shields.io/docker/pulls/phpunit/phpunit.svg)](https://hub.docker.com/r/phpunit/phpunit/) [![Docker pull](https://img.shields.io/docker/stars/phpunit/phpunit.svg)](https://hub.docker.com/r/phpunit/phpunit/) [![Github issues](https://img.shields.io/github/issues/JulienBreux/phpunit-docker.svg)](https://github.com/JulienBreux/phpunit-docker/issues) [![License](https://img.shields.io/github/license/JulienBreux/phpunit-docker.svg)](https://github.com/JulienBreux/phpunit-docker/blob/master/LICENSE)


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
