#!/bin/sh

rsync -azv --delete --delete-excluded --delete-after \
	--include ".htaccess" \
	--filter "P .ssh" \
	--filter "P log/*.log" \
	--filter "P log/*.html" \
	--exclude ".git" \
	--exclude "log/*" \
	--exclude "temp/*" \
	--exclude "scripts" \
	--exclude "tests" \
	--exclude "composer.json" \
	--exclude "web.config" \
	. \
	blog.srigi.sk@srigi.sk:/
