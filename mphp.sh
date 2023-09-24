#!/bin/bash
if [ -n "$(ls -A ./.php_conf 2>/dev/null)" ]
then
	source .php_conf
	$PHP_VER $@
else
	php $@
fi
