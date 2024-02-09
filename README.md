# PHPStan

The Docker image is ready to use:

```
docker pull ghcr.io/xelysion/docker-phpstan:latest
```

# Usage

```
docker run --rm -v /path/to/app:/app ghcr.io/xelysion/docker-phpstan [some arguments for PHPStan]
```
Refer to PHPStan documentation https://phpstan.org/user-guide/docker#usage

# Configuration

You can update the `phpstan.neon` file in order to use the extension:

```
includes:
	- /composer/vendor/phpstan/phpstan-symfony/extension.neon
	- /composer/vendor/phpstan/phpstan-doctrine/extension.neon
	- /composer/vendor/phpstan/phpstan-phpunit/extension.neon
```

Refer to PHPStan documentation https://phpstan.org/user-guide/docker#install-phpstan-extensions


# Description

Based on PHPStan image [1-php8.3](https://github.com/phpstan/phpstan/pkgs/container/phpstan/170527832?tag=1-php8.3) with [Symfony](https://github.com/phpstan/phpstan-symfony), [Doctrine](https://github.com/phpstan/phpstan-doctrine) & [PHPUnit](https://github.com/phpstan/phpstan-phpunit) extension.

| Extension        | Version |
|------------------|---------|
| phpstan-symfony  | 1.3.7   |
| phpstan-doctrine | 1.3.61  |
| phpstan-phpunit  | 1.3.15  |
