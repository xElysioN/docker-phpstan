# docker-phpstan

Docker image based on [PHPStan](https://phpstan.org/) with the [Symfony](https://github.com/phpstan/phpstan-symfony), [Doctrine](https://github.com/phpstan/phpstan-doctrine) and [PHPUnit](https://github.com/phpstan/phpstan-phpunit) extensions pre-installed.

The image tag matches the PHPStan version.

## Usage

```bash
docker run --rm -v /path/to/app:/app ghcr.io/xelysion/docker-phpstan [arguments]
```

Refer to the [PHPStan Docker documentation](https://phpstan.org/user-guide/docker#usage) for more details.

## Pull

```bash
# Latest release
docker pull ghcr.io/xelysion/docker-phpstan:latest

# Specific PHPStan version
docker pull ghcr.io/xelysion/docker-phpstan:2.1
```

## Configuration

Enable the extensions in your `phpstan.neon`:

```neon
includes:
	- /composer/vendor/phpstan/phpstan-symfony/extension.neon
	- /composer/vendor/phpstan/phpstan-doctrine/extension.neon
	- /composer/vendor/phpstan/phpstan-phpunit/extension.neon
```

Refer to the [PHPStan documentation](https://phpstan.org/user-guide/docker#install-phpstan-extensions) for more details.

## Included versions

| Package          | Version |
|------------------|---------|
| PHPStan          | 2.1.43  |
| phpstan-symfony  | 2.0.15  |
| phpstan-doctrine | 2.0.20  |
| phpstan-phpunit  | 2.0.16  |
