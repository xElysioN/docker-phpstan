FROM ghcr.io/phpstan/phpstan:1-php8.3

ARG PHPSTAN_SYMFONY_VERSION=1.3.7
ARG PHPSTAN_DOCTRINE_VERSION=1.3.61
ARG PHPSTAN_PHPUNIT_VERSION=1.3.15

RUN composer global require \
	"phpstan/phpstan-symfony:${PHPSTAN_SYMFONY_VERSION}" \
	"phpstan/phpstan-doctrine:${PHPSTAN_DOCTRINE_VERSION}" \
	"phpstan/phpstan-phpunit:${PHPSTAN_PHPUNIT_VERSION}"

LABEL com.docker-phpstan.phpstan-symfony-extension-version="${PHPSTAN_SYMFONY_VERSION}" \
	com.docker-phpstan.phpstan-doctrine-extension-version="${PHPSTAN_DOCTRINE_VERSION}" \
	com.docker-phpstan.phpstan-phpunit-extension-version="${PHPSTAN_PHPUNIT_VERSION}"
