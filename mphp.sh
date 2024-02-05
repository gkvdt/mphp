#!/bin/bash
if [ -n "$(ls -A ./.php_conf 2>/dev/null)" ]
then
	source .php_conf
	$PHP_VER --version | grep PHP -m 1
	$PHP_VER $@
else
	php --version 
	php $@
fi
