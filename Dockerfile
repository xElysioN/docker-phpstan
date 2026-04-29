ARG PHPSTAN_VERSION=2.1.53
FROM ghcr.io/phpstan/phpstan:${PHPSTAN_VERSION}-php8.4

ARG PHPSTAN_VERSION
ARG PHPSTAN_SYMFONY_VERSION=2.0.15
ARG PHPSTAN_DOCTRINE_VERSION=2.0.21
ARG PHPSTAN_PHPUNIT_VERSION=2.0.16

RUN composer global require \
	"phpstan/phpstan-symfony:${PHPSTAN_SYMFONY_VERSION}" \
	"phpstan/phpstan-doctrine:${PHPSTAN_DOCTRINE_VERSION}" \
	"phpstan/phpstan-phpunit:${PHPSTAN_PHPUNIT_VERSION}"

LABEL com.docker-phpstan.phpstan-version="${PHPSTAN_VERSION}" \
	com.docker-phpstan.phpstan-symfony-extension-version="${PHPSTAN_SYMFONY_VERSION}" \
	com.docker-phpstan.phpstan-doctrine-extension-version="${PHPSTAN_DOCTRINE_VERSION}" \
	com.docker-phpstan.phpstan-phpunit-extension-version="${PHPSTAN_PHPUNIT_VERSION}"
