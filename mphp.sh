#!/bin/bash

if [ -n "$(ls -A ./.php_conf 2>/dev/null)" ]; then
    source .php_conf
    $PHP_VER --version | grep PHP -m 1
    $PHP_VER "$@"
else
    read -p ".php_conf not found. Do you want create? (y/N): " response
    if [[ "$response" == "y" ]]; then
        read -p "PHP Version : " php_version
        echo "PHP_VER=$php_version" > .php_conf
        echo ".php_conf dosyası oluşturuldu. PHP_VER=$php_version"
	source .php_conf
	$PHP_VER --version | grep PHP -m 1
	$PHP_VER "$@"
    else 
        php --version 
	php "$@"
    fi
fi
